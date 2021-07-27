# Algebra applications

This repository contains four tutorials illustrating applications of linear algebra and matrices. Tha aim is to show the power and versatility of basic properties of matrices combined with scientific software. The first three notebooks can be accessed by simply cliking [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ltoniazzi/Algebra_applications/main) and then navigating to the desired `.ipynb` file. See below for more details. Enjoy!

## Supervised learning

<img src="https://raw.githubusercontent.com/ltoniazzi/Algebra_applications/main/Virtual_reality/images/ML.png?raw=true)" width="375" height="230" align="right" /></a>

In this tutorial we construct from scratch, and without using calculus, a training algorythm for image recognition applied to the MNIST set. At the end this is comapered with the same model trained with TensorFlow.

### How to run
Simply click this Binder badge

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ltoniazzi/Algebra_applications/main)

and navigate to the notebook file.

## Encryption
<img src="https://raw.githubusercontent.com/ltoniazzi/Algebra_applications/main/Virtual_reality/images/encrypt.png?raw=true)" width="375" align="right" /></a>



In this tutorial we use the theory of invertibility of elementary matrices to construct an encryption algorythm. You can input a password to encrypt a message and then decrypt the message using the same password.

### How to run
Simply click this Binder badge

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ltoniazzi/Algebra_applications/main)

and navigate to the notebook file.


## Population dynamics

<img src="https://raw.githubusercontent.com/ltoniazzi/Algebra_applications/main/Virtual_reality/images/pop_dyn.png?raw=true)" width="375" align="right" /></a>


In this tutorial we construct a two dymensional dynamical system of Markovian type, which describes the way two populations move between two locations. You can change the dynamics/matrix to anything you want.

### How to run
Simply click this Binder badge

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ltoniazzi/Algebra_applications/main)

and navigate to the notebook file.

## Virtual reality
In this tutorial we construct two 3-dimensional games, where we use vector addition and matrix multiplication to control our avatar and reach a target.

<img src="https://raw.githubusercontent.com/ltoniazzi/Algebra_applications/main/Virtual_reality/images/vir_real.png?raw=true)" width="375" align="right" /></a>
### How to run
To run any of this two tutorials you need to run the file in Matlab.


<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
## How to run the notebooks locally

### 1. Clone the repository locally

In your terminal, use `git` to clone the repository locally.

```bash
git clone https://github.com/ltoniazzi/Algebra_applications.git
```

### 2. Download Anaconda

Download and install the [Anaconda or Miniconda distribution](https://www.anaconda.com/download/) of Python 3.

### 3. Set up your environment

If this is the first time you're setting up your compute environment,
use the `conda` package manager
to **install all the necessary packages**
from the provided `environment.yml` file.

```bash
conda env create -f environment.yml
```

To **activate the environment**, use the `conda activate` command.

```bash
conda activate alg_app
```

**If you get an error activating the environment**, use the older `source activate` command.

```bash
source activate alg_app
```

To **update the environment** based on the `environment.yml` specification file, use the `conda update` command.

```bash
conda env update -f environment.yml
```



### 4 Open your Jupyter notebook in Jupyter Lab

In the terminal, execute `jupyter lab`.

