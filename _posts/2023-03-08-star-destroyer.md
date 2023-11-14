---
title: Greeble Material
longtitle: Greebling Material Experiment
layout: post
author: Bryce Knight
image: strdstr.png
alttext: greebled star destroyer
---

This was created primarily to test the results of my experimenting with trying to create a procedural sci-fi panelling material.

## The Material

### Distance to edge

By default, when a Voronoi texture node is set to euclidean (the actual physical distance, **d=sqrt(x^2 + y^2)**), you can tell it to give you the "distance to edge" which will give a nice rocky looking cell pattern. This is not available when using Manhattan **(d=x+y)** or Chebyshev **(d=max(x,y))**, which give much more geometric patterns consisting of straight and diagonal lines.

It took me a long time to discover I could create this effect manually by using the F1 (nearest point) distance and the F2 (second nearest point) and just taking the difference, thus, getting the distance from the closest cell boundary. This gave me a very nice cell pattern consisting of only straight vertical, horizontal and 45° angle boundaries.

The resulting network of nodes was then saved as a single node group that I could then reuse later and have any changes carry over into all duplicates

### Putting it together

The final material was created by layering a number of the patterns over each other. Each cell was given a random factor (value from 0 to 1) and depending on whether that was greater than some “coverage” threshold value, it would either be placed on top of the previous layer, or ignored. 

With this, I had 4 different layers of my pattern, and I achieved the desired look by tweaking the scale and coverage of each until I had a nice mix of the smaller and larger panels.

For the final material, I took the random factor value for each cell in the final pattern, and translated it into a color between two different shades of grey.

The panels were given a 3d look by taking the distance value, clamping it so that any values above a small threshold to be the same, then used that as the input for a bump node, giving a small area of perceived slope around the border of each panel.

## The Model

The star destroyer was mostly an afterthought, to test the material in action. The model was created with minimal time and effort, lacking in much detail. Some details were added using the Discombobulator addon for blender, which randomly split and extruded faces around the model to give a further detailed look.
