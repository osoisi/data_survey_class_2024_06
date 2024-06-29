CREATE VIEW data_survey_view_2022 AS

SELECT 
	   [Unique_ID]
      ,[Date_Taken_America_New_York] as Date_taken
      ,[Time_Taken_America_New_York] as Time_taken
      ,[Time_Spent]
      ,[Q1_Which_Title_Best_Fits_your_Current_Role] as Current_role
      ,[Q2_Did_you_switch_careers_into_Data] as Career_Switch
      ,[Salary_Lowend]
      ,[Salary_Highend]
      ,[Salary_Average]
      --,[Q4_What_Industry_do_you_work_in] as Industry
	  ,CASE 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Energy%' THEN 'Energy'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Coworking%' THEN 'Real Estate' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Retail%' THEN 'Retail' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Logistics%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%trans%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%distri%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%wareh%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%gaming%' THEN 'Tech' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Aviation%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%suppl%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Insurance%' THEN 'Finance' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Oil%' THEN 'Energy'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Autom%' THEN 'Manuafacturing'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Manu%' THEN 'Manuafacturing'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Student%' THEN 'Unemployed'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Not working%' THEN 'Unemployed'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Oil%' THEN 'Energy'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Food%' THEN 'Retail'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Telecom%' THEN 'Tech'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Market%' THEN 'Media'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Advert%' THEN 'Media'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Recruit%' THEN 'Recruitment'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Biotech%' THEN 'Tech'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Consumer%' THEN 'Retail'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Consult%' THEN 'Consulting'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Customer%' THEN 'Customer Service' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Gover%' THEN 'Government' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Enter%' THEN 'Media' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Aero%' THEN 'Logistics' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Hospi%' THEN 'Hospitality' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Poultry%' THEN 'Agro' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Renew%' THEN 'Energy' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Store%' THEN 'Retail' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Medical%' THEN 'Health' 
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Culture%' THEN 'Other'
				WHEN [Q4_What_Industry_do_you_work_in] LIKE '%Other%' THEN 'Other' 

			ELSE [Q4_What_Industry_do_you_work_in]
	  END AS Industry
      ,[Q5_Favorite_Programming_Language]
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Salary]
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Work_Life_Balance]
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Coworkers]
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Management]
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Upward_Mobility]
      ,[Q6_How_Happy_are_you_in_your_Current_Position_with_the_following_Learning_New_Things]
      ,[Q7_How_difficult_was_it_for_you_to_break_into_Data]
      ,[Q8_If_you_were_to_look_for_a_new_job_today_what_would_be_the_most_important_thing_to_you]
      ,[Q9_Male_Female]
      ,[Q10_Current_Age]
      ,[Q11_Which_Country_do_you_live_in]
      ,[Q12_Highest_Level_of_Education]
      ,[Q13_Ethnicity]
  FROM [Data_industry_by_alex].[dbo].[Data industry Survey by Alex Freberg]
