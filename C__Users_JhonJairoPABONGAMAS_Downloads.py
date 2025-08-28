#!/usr/bin/env python
# coding: utf-8

# In[10]:


pip install mysql-connector-python


# In[4]:


import mysql.connector
import pandas as pd 
cnx=mysql.connector.connect(
    user='root',
    password='Student123@',
    host='localhost',
    database='jhonpabon7'
)
cursor = cnx.cursor()
cursor.execute("select * from STUDENT ")
rows = cursor.fetchall()
print("***** query output presented as a Python list *****")
print("\n")
for row in rows:
 print(row)
 
print("\n\n")
print("***** query output presented as a pands dataframe *****")
print("\n")
df = pd.read_sql_query("select * from STUDENT ", cnx)
print(df) 
 


# In[5]:


df = pd.read_sql_query('select studentname,studentgpa from STUDENT order by studentname desc', cnx)
print(df) 


# In[6]:


df = pd.read_sql_query('select * from teacher order by teacherdesignation,teachersalary', cnx)
print(df) 


# In[8]:


df = pd.read_sql_query('''select student.studentname,enrolment.* from student
join  enrolment using (STUDENTID) 
where studyyear in ('2010','2020','2022')
order by studyyear,semester''',cnx)
print(df) 


# In[10]:


df = pd.read_sql_query('select distinct studentname from student join enrolment using(studentid) where unitcode in("MDS601","MDS603")',cnx)
print(df) 


# In[12]:


df = pd.read_sql_query('select studentname from student join enrolment using(studentid) where unitcode in("MDS601","MDS603")',cnx)
print(df) 


# In[13]:


df = pd.read_sql_query('''select distinct UNITCODE from enrolment join unit using(unitcode) 
where enrolmentid in(
	select enrolmentid from enrolment 
    where (enrolment.semester="SPRING" and  enrolment.studyyear="2020") 
    or (enrolment.semester="FALL" and  enrolment.studyyear="2022"))''',cnx)
print(df)  ,MCBBBBB


# In[16]:


df = pd.read_sql_query('''select unitcode,semester from unit 
join enrolment using(unitcode) 
where enrolment.semester='SPRING' AND enrolment.studyyear="2020" AND UNITCODE NOT IN (select UNITCODE from enrolment 
    where (enrolment.semester="FALL" AND enrolment.studyyear="2022"))''',cnx)
print(df) 


# In[ ]:




