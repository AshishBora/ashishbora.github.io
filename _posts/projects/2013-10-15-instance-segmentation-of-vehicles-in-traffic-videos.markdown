---
layout: post
title:  "Instance segmentation of vehicles in traffic videos"
date: 2013-10-15 01:50:04 -0500
categories: projects
---


#### Introduction
---
In this project, we attempt to design a system to detect, segment, track, and count unique vehicles in traffic videos. This finds applications in automatic traffic surveillance systems and the techniques are more boradly applicable in other context as well.


#### Results
----

The final results can be seen in the video below: Blue streaks are traces produced by our method, where each trace corresponds to one vehicle:

<iframe width="560" height="315" src="https://www.youtube.com/embed/sNRefUY7bmU" frameborder="0" allowfullscreen></iframe>


#### Approach
----

In most applications, the camera is fixed and hence background is relatively static at short time scales. Thus, our approach is to first estimate the background, and then use that for detecting vehicles and to track them.

Typically the backgorund pixels look very different from pixels produced by vehicles. Thus, if we have a model for probability distribution of the background pixels, then in any given image, we can estimate the foreground by finding pixels that have low probability under the background model.

To obtain a model of the background pixels, we observe that the background pixels typically originate from a small number of fixed 'categories' or modes -- such as road or grass. We can model the pixel values under each mode using a Gaussian distribution. Then, the overall distribution is given by a Gaussian Mixture Model (GMM). Further, in our setting, the background distribution slowly drifts as the lighting conditions changes, such as from day to night. So the problem reduces to online fitting of GMMs. We used known algorithms for this task to achieve reasonably good background detection.

Once we learn the GMM for background, we use that to threshold the probability values under this model to obtain foreground and background pixels. However, because our model does not consider correlations between nearby pixels, the foreground estimation is not spatially coherent -- for example, we can have artifacts such as background pixels surrounded by foreground ones. A simple tweak could be to learn a GMM over patches, but this can be computationally expensive since the the number of modes would probably have to be large. To tackle this problem, we post-processed the foreground estimation obtained from the GMM model by median filtering and morphological closing.

Within the foreground, we just find large connected components and discard the small ones. Each large connected component is deemed to be a different vehicle. Based on the movement of centroids of the connected components, tracked the vehicles by clustering their velocity vectors across time.
