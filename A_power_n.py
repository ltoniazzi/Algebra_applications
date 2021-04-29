# -*- coding: utf-8 -*-
"""
Created on Mon Apr 26 12:23:05 2021

@author: Mas
"""

import numpy as np
import matplotlib.pyplot as plt
from time import sleep

'''
#A matrix entries
a, b, c, d = .95, .03, .05, .97
#v vector entries
x, y = 6*(10**5), 4*(10**5) 
'''
#A matrix entries
a, b, c, d = np.cos(.05), -np.sin(.05), np.sin(.05), np.cos(.05)
#v vector entries
x, y = 6, 6

A = np.array([[a, b], [c, d]])
v = np.array([x, y]).reshape(2,1)
#v = np.array([3,5]).reshape(2,1)
dyn = v
time_ = np.arange(1,51)
for n in time_:
    #dyn.append(np.linalg.matrix_power(A,n) @ v)
    dyn = np.column_stack((dyn, np.linalg.matrix_power(A,n) @ v))



sizes = 20* np.ones(dyn.shape[1])
#colors = np.random.randint(0, 50, 100)[:dyn.shape[1]]
#plt.xlim(v[0]-3,v[0]+3)
#plt.ylim(v[1]-3,v[1]+3)
#plt.scatter(dyn[0],dyn[1],s=sizes,c=colors)

for n in time_:
    plt.title('$A^n v$ as a point in $R^2$')
    plt.xlabel('Pop. in central city')
    plt.ylabel('Pop. in suburbs')
    plt.xlim(min(dyn[0])-.05*np.abs(min(dyn[0])), max(dyn[0])+.05*max(dyn[0]))
    plt.ylim(min(dyn[1])-.05*np.abs(min(dyn[1])), max(dyn[1])+.05*max(dyn[1]))
    plt.scatter(dyn[0][:n],dyn[1][:n],s=sizes[:n], label='$A^n v$ up to time n = %.0f' %n)
    plt.legend(loc='best')
    plt.show()
    sleep(.25)
    
for n in time_:
    plt.title('$A^n v_1$ as a function of time')
    plt.xlabel('Time')
    plt.ylabel('Pop. in central city')
    plt.xlim(0, len(time_))
    plt.ylim(min(dyn[0])-.05*np.abs(min(dyn[0])), max(dyn[0])+.05*max(dyn[0]))
    plt.plot(time_[:n],dyn[0][:n], label='$A^n v_1$ up to time n = %.0f' %n)
    plt.legend(loc='best')
    plt.show()
    sleep(.25)
    
for n in time_:
    plt.title('$A^n v_2$')
    plt.xlabel('Time')
    plt.ylabel('Pop. in suburbs')
    plt.xlim(0, len(time_)+3)
    plt.ylim(min(dyn[1])-.05*np.abs(min(dyn[1])), max(dyn[1])+.05*max(dyn[1]))
    plt.plot(time_[:n],dyn[1][:n], label='$A^n v_2$ up to time = %.0f' %n)
    plt.legend(loc='upper left')
    plt.show()
    sleep(.15)
    
for n in time_:
    plt.title('$A^n v_1/A^n v_2$')
    plt.xlabel('Time')
    plt.ylabel('Ratio Pop. in centr to sub')
    plt.xlim(0, len(time_)+3)
    plt.ylim(min(dyn[0]/dyn[1])-.05*min(dyn[0]/dyn[1]), max(dyn[0]/dyn[1])+.05*max(dyn[0]/dyn[1]))
    plt.plot(time_[:n],dyn[0][:n]/dyn[1][:n], label='$A^n v_1/A^n v_2$ up to time = %.0f' %n)
    plt.legend(loc='best')
    plt.show()
    sleep(.15)
# scatter() is used for plotting a scatter plot
#plt.scatter(x, y, s=sizes, c=colors)