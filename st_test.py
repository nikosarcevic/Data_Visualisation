# %%
import numpy as np
import streamlit as st
from scipy import integrate

st.set_page_config(page_title='DistributionAnalyser')

logo, name = st.sidebar.columns(2)
#with logo:
    #image = 'https://raw.githubusercontent.com/rdzudzar/DistributionAnalyser/main/images/logo_da.png?token=AIAWV2ZRCFKYM42DVFTD3OLAN3CQK'
    #st.image(image, use_column_width=True)
with name:
    st.markdown("<h1 style='text-align: left; color: grey;'> \
                CosmoCalc </h1>", unsafe_allow_html=True)

st.sidebar.write(" ")

def main():
    """
    Register pages to Explore and Fit:
        page_introduction - contains page with images and brief explanations
        page_explore - contains various functions that allows exploration of
                        continuous distribution; plotting class and export
        page_fit - contains various functions that allows user to upload
                    their data as a .csv file and fit a distribution to data.
    """

    pages = {
        "Introduction": page_introduction,
        "Explore distributions": page_explore,
        "Fit distributions": page_fit,
    }

    st.sidebar.title("Main options")

    # Radio buttons to select desired option
    page = st.sidebar.radio("Select:", tuple(pages.keys()))
                                
    # Display the selected page with the session state
    pages[page]()

    # Write About
    st.sidebar.header("About")
    st.sidebar.warning(
            """
            Distribution Analyser app is created and maintained by 
            **Robert Dzudzar**. If you like this app please star its
            [**GitHub**](https://github.com/rdzudzar/DistributionAnalyser)
            repo, share it and feel free to open an issue if you find a bug 
            or if you want some additional features.
            """
    )



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
speed_of_light=2.99792458e5

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
    c0 = speed_of_light
    return c0/H0*result


distance_value = st.text_input('Distance') 
if distance_value :
    st.write('The distance modulus is:', calculate_distance_modulus(float(distance_value )), '[no units]')
    
 
z_value = st.text_input('Redshift')
hubble = st.text_input('Hubble', str(H0))

if z_value:
    st.write('comoving distance is:', comoving_distance(float(z_value), H0=float(hubble)), 'Mpc')
    

                 
                        
                        


