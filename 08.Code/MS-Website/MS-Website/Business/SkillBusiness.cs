using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MS_Website.Models;

namespace MS_Website.Business
{
    public class SkillBusiness
    {
        MSEntities db = new MSEntities();

        public List<string> SkillInstanceGenerate(Recruitment recruiment)
        {
            var skillList = new List<string>();

            if (recruiment != null)
            {
                SkillReference skillRef = db.SkillReferences.Find(recruiment.SkillRefId);
                if (skillRef != null)
                {
                    SkillInstance skill;
                    string skillStr;
                    if (skillRef.Gender != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Gender);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Age != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Age);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.LanguageEnglish != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageEnglish);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.LanguageChinese != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageChinese);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.LanguageJapanese != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageJapanese);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.LanguageKorean != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageKorean);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Experience != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Experience);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Hometown != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Hometown);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Address != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Address);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Married != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Married);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Stay != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Stay);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Salary != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Salary);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Work != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Work);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.SickCare != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.SickCare);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.OldCare != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.OldCare);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.BabySister != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.BabySister);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.DisabilityCare != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.DisabilityCare);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.BonsaiCare != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.BonsaiCare);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Cooking != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Cooking);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.Washing != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Washing);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                    if (skillRef.CleanHouse != null)
                    {
                        skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.CleanHouse);
                        if (skill != null)
                        {
                            skillStr = skill.SkillNameVietnam;
                            if (skill.SkillString != null)
                            {
                                skillStr += "-" + skill.SkillString;
                            }
                            skillList.Add(skillStr);
                        }
                    }
                }
            }
            return skillList;
        }
    }
}