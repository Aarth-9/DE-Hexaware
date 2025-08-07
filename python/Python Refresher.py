import pandas as pd
import numpy as np
cvalues = [20.1, 20.8, 21.9, 22.5, 22.7, 22.3, 21.8, 21.2, 20.9, 20.1]
data = np.array(cvalues)
print(data)

# Adding data to faremheit
fvalues = [ x*9/5 + 32 for x in cvalues]
print(fvalues)


print(np.arange(1,10)) # range values between 1 and 10 without including end value
print(np.linspace(1, 10))  # 50 values between 1 and 10
print(np.linspace(1, 10, 7)) # 7 values between 1 and 10
print(np.linspace(1, 10, 7, endpoint=False)) # excluding the endpoint
 
# Creating array with list
a = np.array([[1,2,4],[5,8,7]], dtype = "float")

print("Array:\n", a) #list value

b = np.array((1,2,4))
print("Array - tuple:\n", b) #tuple value


# Creating 3x4 array with zeros
c = np.zeros((3, 4))
print ("An array initialized with all zeros:\n", c)

# Create a constant value array of complex type
d = np.full((3, 3), 6, dtype = 'complex')
print ("An array initialized with all 6s."
"Array type is complex:\n", d)

# Create an array with random values
e = np.random.random((2, 2))
print ("A random array:\n", e)

# Creating empty series
ser = pd.Series()
print("Pandas Series: ", ser)
# simple array
data = np.array(['H', 'e', 'x', 'a', 'a'])
ser = pd.Series(data)
print("Pandas Series:\n", ser)


data = [["James","","Smith",30,"M",60000],
["Michael","Rose","",50,"M",70000],
["Robert","","Williams",42,"",400000],
["Maria","Anne","Jones",38,"F",500000],
["Jen","Mary","Brown",45,None,0]]

columns=['First Name','Middle Name','Last Name','Age','Gender','Salary']

# Create the pandas DataFrame
pandasDF=pd.DataFrame(data=data, columns=columns)

# print dataframe.
print(pandasDF)



# Creating dataframe using dictionary
NaN = np.nan
dataframe = pd.DataFrame({'Name': ['Shobhit', 'Vaibhav','Vimal', 'Sourabh','Rahul', 'Shobhit'],
    'Physics': [11, 12, 13, 14, NaN, 11],
    'Chemistry': [10, 14, NaN, 18, 20, 10],
    'Math': [13, 10, 15, NaN, NaN, 13]})

print("Created Dataframe")
print(dataframe)

# finding Count of all columns
print("Count of all values wrt columns")
print(dataframe.count())

# Count according to rows
print("Count of all values wrt rows")
print(dataframe.count(axis=1))
print(dataframe.count(axis='columns'))

# count of null values
print("Null Values counts ")
print(dataframe.isnull().sum())
print("Total null values",
dataframe.isnull().sum().sum())


# count of student with greater
# than 11 marks in physics
print("Count of students with physics marks greater than 11 is->",
dataframe[dataframe['Physics'] > 11]['Name'].count())

# resultant of above dataframe
print(dataframe[dataframe['Physics'] > 11])

print("Count of students ->",
dataframe[(dataframe['Physics'] > 10) &
(dataframe['Chemistry'] > 11) &
(dataframe['Math'] > 9)]['Name'].count())

print(dataframe[(dataframe['Physics'] > 10) &
(dataframe['Chemistry'] > 11) &
(dataframe['Math'] > 9)])