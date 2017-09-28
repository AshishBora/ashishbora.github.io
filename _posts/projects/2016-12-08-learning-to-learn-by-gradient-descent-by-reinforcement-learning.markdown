---
layout: post
title:  "Learning to learn by gradient descent by reinforcement learning"
date: 2016-05-22 01:50:04 -0500
categories: projects
---

[Report][report] \| [Code][code]

#### Summary
---

![]({{ "/assets/projects/rl/idea.png" | absolute_url }})

Learning rate is a free parameter in many optimization algorithms including Stochastic Gradient Descent (SGD). Choosing a good value of learning rate is non-trivial for im- portant non-convex problems such as training of Deep Neu- ral Networks. In this work, we formulate the optimization process as a Partially Observable Markov Decision Process and pose the the choice of learning rate per time step as a reinforcement learning problem. On a simple quadratic function family, our agents using Deep Q Networks are able to outperform two simple baselines. We also implement a strong baseline given by ‘Graduate Student Descent’ and show that DQN agents approach its performance. Finally, we present several visualizations that may be helpful to understand the DQN training process.

[report]: {{ "/assets/projects/rl/report.pdf" | absolute_url }}
[code]: https://github.com/AshishBora/grad-desc-rl
