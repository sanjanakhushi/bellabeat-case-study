#!/usr/bin/env python
# coding: utf-8

# In[1]:


pip install pandas numpy matplotlib


# In[1]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


# In[2]:


activity = pd.read_csv("daily_activity.csv")
sleep = pd.read_csv("sleep_day.csv")


# In[3]:


activity.head()
sleep.head()


# In[4]:


activity.shape
sleep.shape


# In[5]:


activity.isnull().sum()
sleep.isnull().sum()


# In[6]:


activity.duplicated().sum()
sleep.duplicated().sum()


# In[9]:


activity['ActivityDate'] = pd.to_datetime(
    activity['ActivityDate'],
    format='mixed'
)

sleep['SleepDay'] = pd.to_datetime(
    sleep['SleepDay'],
    format='mixed'
)


# In[10]:


activity.info()
sleep.info()


# In[11]:


activity['Weekday'] = activity['ActivityDate'].dt.day_name()


# In[12]:


sleep['SleepHours'] = sleep['TotalMinutesAsleep'] / 60


# In[13]:


print("Average Steps:", activity['TotalSteps'].mean())
print("Average Calories:", activity['Calories'].mean())
print("Average Sleep Hours:", sleep['SleepHours'].mean())


# In[14]:


weekday_steps = activity.groupby('Weekday')['TotalSteps'].mean()

print(weekday_steps)


# In[15]:


merged = pd.merge(
    activity,
    sleep,
    on='Id',
    how='inner'
)

merged.head()


# In[16]:


summary = activity.groupby('Weekday').agg({
    'TotalSteps':'mean',
    'Calories':'mean'
}).reset_index()

summary.to_csv('summary_stats.csv', index=False)


# In[17]:


import matplotlib.pyplot as plt

weekday_steps.plot(kind='bar')

plt.title('Average Steps by Weekday')
plt.xlabel('Weekday')
plt.ylabel('Average Steps')

plt.show()


# In[ ]:




