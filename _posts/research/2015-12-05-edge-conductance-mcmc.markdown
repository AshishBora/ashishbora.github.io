---
layout: post
title: "Edge conductance estimation using MCMC"
date: 2015-12-05 01:50:04 -0500
categories: research
---

#### [Paper][paper], [Slides][slides], [Poster][poster], [Code][code]

### Summary
---

Estimating effective edge conductances in a graph finds several applications. Practical problems can be huge in size making the problem memory intensive. Further these graphs can be dynamic in nature. In such cases, repeated computations can be extremely expensive.

To adress these problems, we propose an Markov Chain Monte Carlo ([MCMC](https://en.wikipedia.org/wiki/Markov_chain_Monte_Carlo)) scheme for estimating effective edge conductances. Our algorithm is 

1. memory efficient
2. uses only local information and thus can be easily distributed
3. easily parallelizable

We provide a sample complexity analysis and present simulation experiments on large datasets supporting the theoretical observations.

[paper]: {{ "/assets/edge_conductance/paper.pdf" | absolute_url }}
[slides]: {{ "/assets/edge_conductance/presentation.pdf" | absolute_url }}
[poster]: {{ "/assets/edge_conductance/poster.pdf" | absolute_url }}

<!-- [code]: -->
