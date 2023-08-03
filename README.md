
# TDA Applications

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/facebookresearch/habitat-lab/blob/main/LICENSE) [![Python 3.9](https://img.shields.io/badge/python-3.9-blue.svg)](https://www.python.org/downloads/release/python-390/)

## Background

Topological Data Analysis (TDA) is a recent field that emerged from various works in applied algebraic topology, a branch of mathematics. Algebraic topology focuses on studying properties of shapes/geometric objects that are preserved under deformations. One classic example is the coffee cup donut equivalence when we think of how one can be continuously stretched/squished into the other.

![alt text](https://upload.wikimedia.org/wikipedia/commons/2/26/Mug_and_Torus_morph.gif)

Today, data is often represented as point clouds which can be embedded into Euclidean or other metric spaces. TDA aims to provide both qualitative and quantitative information about the complex geometric structures underlying this data. It can be highly effective when used in combination with or complementarily to other data science tools.

## Persistent Homology


## Mapper


## TDA Pipeline Example

In our [MNIST notebook](https://github.com/jnancy/tda-applications/blob/master/notebooks/MNIST_classification.ipynb), we provide a complete albeit very minimal and barebones example of the TDA feature extract pipeline:

1. Preprocess data (e.g. binarization of image, rotations)
   ![](assets/binarization.png)
2. Construct filtrations (the growing circles around a point, we could also use a different shape)
   ![](assets/filtration.png)

3. Generate persistence diagrams to determine important features
   ![](assets/persistence.png)
   
4. Use features as input to classifier of choice (e.g. random forest)
   
We see a noticeable reduction of features needed for model training from the standard 28 x 28 pixel image (28x28=**784 features**) to just **476 topological features**.

This is just a small proof of concept. We can spend more time and effort choosing the embedding of the data (the space can be non Euclidean) as well as how we measure distances between points for more complex datasets. For large ML models, selecting the right features is essential and can lead to exponential time and money savings, in addition to improved accuracy.

## Jupyter Notebooks

- [TDA Sample](https://github.com/jnancy/tda-applications/blob/master/notebooks/TDA%20sample.ipynb)
  - outlines commonly used methods for TDA with visualizations
- [MNIST Classification](https://github.com/jnancy/tda-applications/blob/master/notebooks/MNIST_classification.ipynb)
  - complete TDA pipeline, mainly leverages persistent homology for feature extraction
- [Diabetes](https://github.com/jnancy/tda-applications/blob/master/notebooks/diabetes.ipynb) 
  - WIP, includes summary statistics + initial persistence diagrams 

## Further Reading

- [Persistent Homology Introduction](https://towardsdatascience.com/persistent-homology-with-examples-1974d4b9c3d0)
- [ECG Analysis Using Persistent Homology](https://pubmed.ncbi.nlm.nih.gov/36968492/)
- [TDA with Mapper](https://www.quantmetry.com/blog/topological-data-analysis-with-mapper/?fbclid=IwAR3XlfxmST7f7ZHWxyvyQuMC-U108Tzjfq_ND4vUVtDIq51iGWUxqjU8i2U)
- [TDA for Deep Learning](https://towardsdatascience.com/mixing-topology-and-deep-learning-with-perslay-2e60af69c321)
