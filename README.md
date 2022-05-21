# Employee_Data_Analysis_exl


Introduction:

• Employee churn is the overall turnover in an organization's staff as existing employees leave and new ones are hired. There are six csv files , 
 each content employees information.Based on those employee information such as , sex,date of birtth, number of projects, last_performance,
 hired date, salary , designation, and department; had buit predictive model with accuracy 89%.

Objective :
There are three major steps for completing employee data analysis pipeline, each one has script file which uploaded here.

** STEPS **
1. Data Modeling , ER diagram 
  - create mysql table 
  - load csv file in created table 
    - prepare script file createtb_sql.sql
    - source createtb_sql.sql
2.Data Engineering 
  - create new directory in hdfs 
  - import data from mysql to hdfs using sqoop 
     - prepare script file shell_script.sh
     -sh shell_script.sh
 
  - create table in hive 
  - load data into created table 
     -prepare script hivefile 
    
3. Analysis the data in  impala 
4. Import data in pyspark 
5. EDA 


** 1.DATA MODELING ,ER DIAGRAM **
  
 ![QuickDBD-export](https://user-images.githubusercontent.com/42148352/169115852-4ca08c6a-39c6-4463-8647-bba349c21958.png)
 
 
 

![Screenshot 2022-05-20 at 09 29 29](https://user-images.githubusercontent.com/42148352/169447939-c5b09d93-b7d0-4108-9bca-85dc313340f3.png)


  -- top 20  Highest earning employees are shown on above table ; Gridswold Charmane is being one who is earning highest among all at 129492, Majority of top  20 highest  earning employee are Male , there are only three percentage of women included in top 20 highest earning employee.
  
![Screenshot 2022-05-20 at 09 29 52](https://user-images.githubusercontent.com/42148352/169448022-40f85ee6-c657-41dc-819b-ccb98f47ba04.png)![Screenshot 2022-05-20 at 09 30 32](https://user-images.githubusercontent.com/42148352/169448033-a1ecace6-272a-4301-a42c-bbfff6c42910.png)


-- ### According to given illustration , Majority of employees are in IT sector. Managers might churn regardingless of salary, There is high churn rate in manager designation at high salary.

6. Modelling 
- RandomForest  Classifier Algorithm is being used for this analysis if employee churn or not churn 
7. evaluation 
- Accuracy
- precision
- recall
- f1 score


![Screenshot 2022-05-20 at 09 40 03](https://user-images.githubusercontent.com/42148352/169448814-f7181c78-b766-45b5-8504-15593e8e68de.png)

-output
  -
 ![Screenshot 2022-05-21 at 20 49 33](https://user-images.githubusercontent.com/42148352/169658174-73ac134e-ac8f-4a3c-a229-5d47d520efde.png)

