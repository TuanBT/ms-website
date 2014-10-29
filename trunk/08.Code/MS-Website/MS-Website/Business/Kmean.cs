using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;

namespace MS_Website.Controllers
{
    public class Kmean
    {

        public string meansPathFile = "";
        public int numClusters = 1;

        public Kmean()
        { }

        public Kmean(int K)
        {
            this.numClusters = K;
        }

        public Kmean(string path)
        {
            this.meansPathFile = path;
            this.numClusters = GetFileFromServer().Length;
        }

        public Kmean(int K, string path)
        {
            this.meansPathFile = path;
            this.numClusters = K;
        }

        //Return list Kmean
        public List<KmeanData> GetKmeanData(List<KmeanData> kmeanDataInput)
        {
           var kmeanDataOutput = new List<KmeanData>();
            kmeanDataOutput = kmeanDataInput;
           var rowData = new double[kmeanDataInput.Count][];
           for (int i = 0; i < kmeanDataInput.Count; i++)
           {
               rowData[i] = kmeanDataInput[i].dataRow;
           }
           int[] clustering = Cluster(rowData, numClusters);

           for (int k = 0; k < numClusters; ++k)
           {
               for (int i = 0; i < rowData.Length; ++i)
               {
                   int clusterId = clustering[i];
                   if (clusterId != k) continue;
                   kmeanDataOutput[i].group = k;
               }
           } 
           return kmeanDataOutput;
        } 

        //Return group of row
        public  int GetGroupRowData(double[] rowData)
        {
            var means = new double[1][];
            string[] lineMeans = GetFileFromServer();
            if (lineMeans.Length > 0)
            {
                means = new double[lineMeans.Length][];
                for (int i = 0; i < lineMeans.Length; i++)
                {
                    string[] numStrs = lineMeans[i].Split(';');
                    double[] dataTemp = new double[numStrs.Length];
                    for (int j = 0; j < numStrs.Length; j++)
                    {
                        dataTemp[j] = Convert.ToDouble(numStrs[j]);
                    }
                    means[i] = dataTemp;
                }
            }

            double min = Distance(rowData, means[0]);
            int groupMin = -1;
            for (int k = 0; k < numClusters; k++)
            {
                double distance = Distance(rowData, means[k]);
                if (distance <= min)
                {
                    min = distance;
                    groupMin = k;
                }
            }
            return groupMin;
        }

        //return distance with one rowdata
        public double GetDistanceRowData(double[] rowData, int group)
        {
            var means = GetMeansFile();
            return Distance(rowData, means[group]);
        }

        //Return distance with many rowData
        public double GetDistanceRowData(double[] rowData,int group,double[][] means)
        {
            return  Distance(rowData, means[group]);
        }

        //Return mean form file
        public double[][] GetMeansFile()
        {
            var means = new double[1][];
            string[] lineMeans = GetFileFromServer();
            if (lineMeans.Length > 0)
            {
                means = new double[lineMeans.Length][];
                for (int i = 0; i < lineMeans.Length; i++)
                {
                    string[] numStrs = lineMeans[i].Split(';');
                    double[] dataTemp = new double[numStrs.Length];
                    for (int j = 0; j < numStrs.Length; j++)
                    {
                        dataTemp[j] = Convert.ToDouble(numStrs[j]);
                    }
                    means[i] = dataTemp;
                }
            }
            return means;
        }

        private string[] GetFileFromServer()
        {
            string[] lineMeans = null;
            try
            {
                lineMeans = System.IO.File.ReadAllLines(meansPathFile);
            }
            catch (Exception)
            {
            }
            return lineMeans;
        }

        private void WriteFileToServer(double[][] means)
        {
            try
            {
                if (!File.Exists(meansPathFile))
                {
                    File.Create(meansPathFile).Close();
                }
                using (var file = new System.IO.StreamWriter(meansPathFile))
                {
                    for (int i = 0; i < means.Length; i++)
                    {
                        string line = "";
                        for (int j = 0; j < means[i].Length; j++)
                        {
                            line += means[i][j];
                            if (j < means[i].Length - 1)
                            {
                                line += ";";
                            }
                        }
                        file.WriteLine(line);
                    }
                }
            }
            catch
            {
            }
        }

        public int[] Cluster(double[][] rawData, int numClusters)
        {
            double[][] data = rawData;

            bool changed = true; // was there a change in at least one cluster assignment?
            bool success = true; // were all means able to be computed? (no zero-count clusters)

            int[] clustering = InitClustering(data.Length, numClusters, 0); // semi-random initialization
            double[][] means = Allocate(numClusters, data[0].Length); // small convenience

            int maxCount = data.Length * 10; // sanity check
            int ct = 0;
            while (changed == true && success == true && ct < maxCount)
            {
                ++ct; // k-means typically converges very quickly
                success = UpdateMeans(data, clustering, means); // compute new cluster means if possible. no effect if fail
                changed = UpdateClustering(data, clustering, means); // (re)assign tuples to clusters. no effect if fail
            }
            WriteFileToServer(means);
            return clustering;
        }

        private int[] InitClustering(int numTuples, int numClusters, int randomSeed)
        {
            Random random = new Random(randomSeed);
            int[] clustering = new int[numTuples];
            for (int i = 0; i < numClusters; ++i) // make sure each cluster has at least one tuple
                clustering[i] = i;
            for (int i = numClusters; i < clustering.Length; ++i)
                clustering[i] = random.Next(0, numClusters); // other assignments random
            return clustering;
        }

        private double[][] Allocate(int numClusters, int numColumns)
        {
            // convenience matrix allocator for Cluster()
            double[][] result = new double[numClusters][];
            for (int k = 0; k < numClusters; ++k)
                result[k] = new double[numColumns];
            return result;
        }

        private bool UpdateMeans(double[][] data, int[] clustering, double[][] means)
        {
            int numClusters = means.Length;
            int[] clusterCounts = new int[numClusters];
            for (int i = 0; i < data.Length; ++i)
            {
                int cluster = clustering[i];
                ++clusterCounts[cluster];
            }

            for (int k = 0; k < numClusters; ++k)
                if (clusterCounts[k] == 0)
                    return false; // bad clustering. no change to means[][]

            // update, zero-out means so it can be used as scratch matrix 
            for (int k = 0; k < means.Length; ++k)
                for (int j = 0; j < means[k].Length; ++j)
                    means[k][j] = 0.0;

            for (int i = 0; i < data.Length; ++i)
            {
                int cluster = clustering[i];
                for (int j = 0; j < data[i].Length; ++j)
                    means[cluster][j] += data[i][j]; // accumulate sum
            }

            for (int k = 0; k < means.Length; ++k)
                for (int j = 0; j < means[k].Length; ++j)
                    means[k][j] /= clusterCounts[k]; // danger of div by 0
            return true;
        }

        private bool UpdateClustering(double[][] data, int[] clustering, double[][] means)
        {
            int numClusters = means.Length;
            bool changed = false;

            int[] newClustering = new int[clustering.Length]; // proposed result
            Array.Copy(clustering, newClustering, clustering.Length);

            double[] distances = new double[numClusters]; // distances from curr tuple to each mean

            for (int i = 0; i < data.Length; ++i) // walk thru each tuple
            {
                for (int k = 0; k < numClusters; ++k)
                {
                    distances[k] = Distance(data[i], means[k]); // compute distances from curr tuple to all k means
                }

                int newClusterID = MinIndex(distances); // find closest mean ID
                if (newClusterID != newClustering[i])
                {
                    changed = true;
                    newClustering[i] = newClusterID; // update
                }
            }

            if (changed == false)
                return false; // no change so bail and don't update clustering[][]

            // check proposed clustering[] cluster counts
            int[] clusterCounts = new int[numClusters];
            for (int i = 0; i < data.Length; ++i)
            {
                int cluster = newClustering[i];
                ++clusterCounts[cluster];
            }

            for (int k = 0; k < numClusters; ++k)
                if (clusterCounts[k] == 0)
                    return false; // bad clustering. no change to clustering[][]

            Array.Copy(newClustering, clustering, newClustering.Length); // update
            return true; // good clustering and at least one change
        }

        public double Distance(double[] tuple, double[] mean)
        {
            // Euclidean distance between two vectors for UpdateClustering()
            // consider alternatives such as Manhattan distance
            double sumSquaredDiffs = 0.0;
            for (int j = 0; j < tuple.Length; ++j)
                sumSquaredDiffs += Math.Pow((tuple[j] - mean[j]), 2);
            return Math.Sqrt(sumSquaredDiffs);
        }

        private int MinIndex(double[] distances)
        {
            // index of smallest value in array
            // helper for UpdateClustering()
            int indexOfMin = 0;
            double smallDist = distances[0];
            for (int k = 0; k < distances.Length; ++k)
            {
                if (distances[k] < smallDist)
                {
                    smallDist = distances[k];
                    indexOfMin = k;
                }
            }
            return indexOfMin;
        }

    }
    public class KmeanData
    {
        public int dataRowId { get; set; }
        public double[] dataRow { get; set; }
        public int group { get; set; }
        public double distance { get; set; }
    }
}

/*string strPathServer = AppDomain.CurrentDomain.BaseDirectory;
            string strMeansDataFile = strPathServer + "App_Data\\" + "meansData.txt";
            int numCluterK = 3;
            Kmean kmean = new Kmean(numCluterK, strMeansDataFile);
            List<KmeanData> kmeanDatas = new List<KmeanData>();

            KmeanData kmeanData = new KmeanData
                                      {
                                          dataRowId = 1,
                                          dataRow = new double[] { 10, 20, 30 },
                                          group = -1
                                      };
            kmeanDatas.Add(kmeanData);

            kmeanDatas = kmean.GetKmeanData(kmeanDatas);

            int group = kmean.GetGroupRowData(new double[] { 60, 20, 30 });*/