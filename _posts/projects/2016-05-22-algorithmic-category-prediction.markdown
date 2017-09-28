---
layout: post
title:  "Algorithmic category prediction from natural language problem description"
date: 2016-05-22 01:50:04 -0500
categories: projects
---

[Report][report] \| [Code][code]

#### Summary
---

![]({{ "/assets/projects/nlp/lstm_arch.png" | absolute_url }})

Algorithmic programming contests often involve constructing and implementing an algorithmic solution given only its natural language description. There are typically various broad categories of attacks such as Dynamic Programming, Greedy algorithms, etc. In this work, we study the problem of predicting the algorithmic approach most useful for solving an algorithmic programming challenge given only its natural language description.

As an auxiliary task, we also try to predict the difficulty of a problem given its natural language description. 

In order to solve this problem, we gathered data from two popular programming challenge websites [codeforces.com][http://codeforces.com/] and [codechef.com][https://www.codechef.com/]. Our first dataset has about 2000 problems with natural language descriptions in English and multiple category tags per problem out of the 30 possible tags. The second dataset has about 5000 problems with labels corresponsing to 5 difficulty levels.

For our classifier, we used hashing, bag of words and word2vec word embeddings for feature extraction. With these features, we tried a few baseline approaches -- Logistic Regression, Random Forest, XGBoost. To make better use fo the temporal aspect of the problem, we also trained a Recurrent Neural Network with Long Short Term Memory (LSTM) units.

We also propose and evaluate a transfer learning approach on these tasks.

[report]: {{ "/assets/projects/nlp/report.pdf" | absolute_url }}
[code]: https://github.com/AshishBora/nlp-project
