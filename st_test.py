# %%
import numpy as np
import streamlit as st
from scipy import integrate

def calculate_distance_modulus(d):
    '''
    Method to compute the distance modulus for a given distance.
    
    Distance modulus nu is defined as the difference between the apparent magnitude m and
    the absolute magnitude  M of an astronomical object, mu = m - M.
    
    The distance modulus is then: mu = m - M = 5 * log10(d/{10 pc})
    
    Args: distance d in parsecs
    
    Returns: the distance modulus
    '''
    mu = 5 * np.log10(d/10)
    
    return mu

H0=67
ΩM=0.32
ΩR=0
ΩDE=0.68
w0=-1.
wa=0
speed-of-light=3.0e+5

def E_z(z, ΩM=ΩM, ΩDE=ΩDE, 
        ΩR=ΩR, w0=w0, wa=wa):
    """
    Method to compute the adimensional Hubble rate in the w0waCDm cosmology
    """
    ΩK = 1-ΩM-ΩDE-ΩR
    return np.sqrt(ΩM*(1+z)**3+ΩR*(1+z)**4+ΩDE*(1+z)**(3*(1+w0+wa))*np.exp(-3*wa*z/(1+z))+ΩK*(1+z)**2)

def comoving_distance(z, H0=H0, ΩM=ΩM, 
                      ΩDE=ΩDE, ΩR=ΩR, 
                      w0=w0, wa=wa):
    """
    Method to compute the comoving distance
    """
    integrand = lambda x: 1/E_z(x, ΩM, ΩDE, ΩR, w0, wa)
    if isinstance(z, float):
        result, _ = integrate.quad(integrand, 0, z)
    elif isinstance(z, np.ndarray):
        result = np.vectorize(lambda x: integrate.quad(integrand, 0, x)[0])(z)
    else:
        raise TypeError(f'Expected "Union[float, np.ndarray]", got {type(z)}')
    c0 = speed-of-light
    return c0/H0*result


distance_value = st.text_input('Distance') 
if distance_value :
    st.write('The distance modulus is:', calculate_distance_modulus(float(distance_value )), '[no units]')
    
 
z_value = st.text_input('Redshift')

if z_value:
    st.write('comoving distance is:', comoving_distance(float(z_value)), 'blah')
    

                 
                        
                        


