---
layout: post
title:  "Longer RNNs"
date: 2016-12-13 01:50:04 -0500
categories: projects
---

[Report][report] \| [Code][code]

#### Summary
---

For problems with long range dependencies, training of Recurrent Neural Networks (RNNs) faces limitations because of vanishing or exploding gradients. In this work, we introduce a new training method and a new recurrent architecture using residual connections, both aimed at increasing the range of dependencies that can be modeled by RNNs. We demonstrate the effectiveness of our approach by showing faster convergence on two toy tasks involving long range temporal dependencies, and improved performance on a character level language modeling task. Further, we show visualizations which highlight the improvements in gradient propagation through the network.

[report]: {{ "/assets/projects/dls/report.pdf" | absolute_url }}
[code]: https://github.com/AshishBora/very-long-rnn
