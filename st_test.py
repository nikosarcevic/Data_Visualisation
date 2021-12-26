# %%
import numpy as np
import streamlit as st

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



value = st.text_input('distance') 


if value:
    st.write('The distance modulus is:' calculate_distance_modulus(float(value)), 'no units')


