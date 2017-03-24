---
layout: post
title:  "Bio-inspired Neural Networks for 2-D Contour Tracking"
date: 2014-11-10 01:50:04 -0500
categories: research
---

#### [Paper][paper], [Poster][poster], [Code][code]


### Background
---

Humans are incredibly efficient at complex tasks such as face recognition, speech recognition, performing complex maneuvers etc., while being robust to noise and adaptive to dynamic environment. Current artificial systems that try to mimic these capabilities leave a lot to be desired. Spiking Neural Networks (SNNs) closely model the important aspects of biological neural systems and hold a great potential as building blocks for intelligent systems. We seek to demonstrate the power of SNNs by designing a small network to perform two dimensional locomotion control


### Approach and Results
---

C. Elegans is a tiny worm which tends to migrate to regions of favorable temperature. This behavior is called thermotaxis. Laser ablation studies indicate that a small 5-7 neuron network controls thermotaxis in C. Elegans. Using certain known properties of the neurons in this network, we guessed their functions and based on that, designed a dynamics model for exploration and tracking. We then built SNNs to realize different components of this model and put them together to create the complete circuit shown here. Some of these synapses are plastic and are their strength is governed by simple, local rules.

<img src="{{ "/assets/contour_tracking/model.png" | absolute_url }}" width="500">

We tested our model on various noisy temperature profiles using simulations in MATLAB. A sample run is shown in the video. Initially, the worm is away from the ideal temperature of 20°C. So, it starts an exploration through a random walk. When it comes near the required isotherm, the tracking circuit kicks in, and the worm starts to nicely trace the isotherm. Spike trains of some neurons shown on the left

<iframe width="560" height="315" src="https://www.youtube.com/embed/rPqbzv5YXss" frameborder="0" allowfullscreen></iframe>

We also found that our approach was fairly resilient to noise. The following image shows contour tracking in a highly noisy environment.

<img src="{{ "/assets/contour_tracking/noisy.png" | absolute_url }}" width="300">

Our neural circuit can identify isotherms with ~60% higher probability than the theoretically optimal memoryless Levy foraging. Further, the model exhibits sparse spiking enabling energy-efficient implementations.


[paper]: {{ "/assets/contour_tracking/paper.pdf" | absolute_url }}
[poster]: {{ "/assets/contour_tracking/poster.pdf" | absolute_url }}
