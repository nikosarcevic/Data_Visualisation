# Data Visualisation

This is a repo with some of my procrastination projects. We all have those so don't judge.

## Table of contents
- [Data Visualisation](#data-visualisation)
  * [Standard Model of Particle Physics with Bokeh](#standard-model-of-particle-physics-with-bokeh)
  * [Map of Europe with GeoPandas and Bokeh](#map-of-europe-with-geopandas-and-bokeh)


## Standard Model of Particle Physics with Bokeh

Initial idea: Niko. Code: Niko (me) and [Matthijs](https://github.com/lonbar) ([his website](https://matthijs.vanderwild.com)). Code based on [Bokeh](https://docs.bokeh.org/en/latest/) Periodic System of Elements [interactive plot](https://docs.bokeh.org/en/latest/docs/gallery/periodic.html). 

Due to Bokeh not having the tex implementation yet [they are working on it](https://github.com/bokeh/bokeh/blob/branch-2.4/examples/models/file/latex_extension.py), I thought of going around it and using images for particle symbols. If someone has an idea how to actually make tex work in this case - feel free to comment.

I copied the data from what I found on Wikipedia. If some values are wrong, let me know (don't come at me, HEP people :D).

The hover is hard to format so if you have any ideas how to improve - also comment.

Hope you like it.

Free to use on your websites, as long as you credit the original source. For now you can just credit this repo, I have to come up with a better way.

Best,
Niko&Matthijs

## Map of Europe with GeoPandas and Bokeh

Initial idea came from some work I do for [EuCAPT](https://www.eucapt.org) - it was agreed to represent the organization through its members. Since releasing the information on the individuals is not the way to go, it was decided that maybe just making a map with pinned institutions solves the problem. Since I really like playing around in [Bokeh](https://docs.bokeh.org/en/latest/#) and [GeoPandas](https://geopandas.org) (and other tools of this sort), I suggested to try to make the map interactive... and was very pleased I got the green light. After many months of sorting the data and deciding on whats and hows, the map was published on 18.03.2021 on the [EuCAPT Home Page](https://www.eucapt.org).

Modified version of this code, where I downloaded the [list of countries in Europe with some stats](https://simple.wikipedia.org/wiki/List_of_European_countries)
is publicly available in the folder **EuropeMap**. Feel free to use it, play with it but do not forget to give credits.

This can be useful for anyone who wants to plot some data but doesn't want to go through the Google API pain (or pay for stuff). Note that the map is not the best res, of course. Also note that you can plot the whole world or isolate whatever continent or country you want. I think there should be some world_data version on my GH repo somewhere.

And lastly, thank you to [Bokeh peeps over at Bokeh Discourse](https://discourse.bokeh.org/search?q=dis) (you are the best), [StackOverflow](https://stackoverflow.com) (how did we do stuff before SO?), and EuCAPT for giving me the opportunity to do some fun work. And of course, countless litres of coffee.

Best,
Niko
