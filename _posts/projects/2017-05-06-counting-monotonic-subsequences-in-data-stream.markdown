---
layout: post
title:  "Counting monotonic subsequence in a data stream"
date: 2017-05-08 01:50:04 -0500
categories: projects
---

[Report][report]

#### Summary
---

We study the space complexity of algorithms for counting the number of k-length monotonic subsequences in a data stream. Without loss of generality, we will focus on the monotonically decreasing case (k-dec-count). Our work is related to, and is a generalization of the well studied problem of counting inversions in the streaming model.

We prove Ω(n) deterministic lower bounds for any streaming algorithm that exactly computes the number of inversions (2-dec-count) in a data stream of t elements where each element comes from [n] and t ≥ Ω(n). The proof uses a reduction argument and utilizes communication lower bounds for computation of the disjointness function. Our second result is Ω(n) lower bound on any algorithm that correctly computes k-dec-count in a data stream. We use a reduction argument to compute inversions using any algorithm that computes k-dec-count.

On the other hand, highly efficient approximation algorithms are known for 2-dec-count. We present our attempts at obtaining similar improvements for k-dec-count with k ≥ 3.

[report]: {{ "/assets/projects/cc/report.pdf" | absolute_url }}
