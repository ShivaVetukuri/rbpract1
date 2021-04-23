'''print('okay')
x = 10
y = 20
z=x+y
print(z)

a,b,c = 12,'c'," i'm that"
print(a,b,c)
a=b=c='pis'
print(a)
print(type(a))
print(2+3.5)
print(True+4)
print(False+5)
print(True+False)

x=12
y=15
x,y=y,x
print("The values of x and y are :",x,y)
del x
print(x)
n1=input("edoka number enter chey")
n2=input('enter any one number')
print(int(n1)+int(n2))'''

'''
name="shiva"
age = 24
salary=21000.5

#print("Name: %s \n Age: %d \n Salary: %g"%(name,age,salary))
#print(" Name: {1} \n Age: {0} \n Salary: {2} ".format(name,age,salary))
a=9

if a>=10:
    print("if printed")
elif a<10:
    print("elif is  printed")
else:
    print("else is prnted")
'''

'''print(list(range(10)))
print(list(range(20,30)))
print(list(range(10,50,5)))
print(list(range(10,0,-1)))'''

'''for x in range(10):
    print("The value of x :",x)'''

'''i=22
while i<=55:
    if i==42:
        continue
    print("Value of I:",i)
    i=i+10'''

'''def sum(start,end):
    res=0


    for i in range(start,end+1):
        res=res+i
       # return res


print(sum(30,20))'''

s='var1'

'''def fanny():
    local_1='This is local one'
    global s
    s=100
    print(s)

fanny()'''

'''s1="https://app.succulent2.eupheme.tech/deals/890/roles"

s2=s1.replace("roles","settings")

print(s2)'''

'''names=list(["shiva","vetukuri","katta"])
number=list([420.81,82])
print(names,number)
print(names[0])
names.remove("vetukuri")
names.append("appa")
print(names)'''

'''Directors={
    'sukumar' : 'Rangasthalam',
    'anudeep' : 'jathirathnalu'
}

print(Directors['sukumar'])
Directors['Nolan']='Tenet'
del Directors['anudeep']
print(Directors)

for i in Directors:
    print(i,":",Directors[i])'''

class S1:

    def age(self,years):
         print("shiva is :",years,"Old")


ob1=S1()
ob1.age(24)



