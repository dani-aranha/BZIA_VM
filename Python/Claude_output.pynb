Content is user-generated and unverified.
9
{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# NumPy Tutorial: From Basics to Advanced\n",
    "\n",
    "NumPy (Numerical Python) is the fundamental package for scientific computing in Python. It provides support for large, multi-dimensional arrays and matrices, along with a collection of mathematical functions to operate on these arrays efficiently.\n",
    "\n",
    "## Why NumPy?\n",
    "- **Performance**: NumPy operations are much faster than pure Python loops\n",
    "- **Memory Efficient**: Uses contiguous memory blocks\n",
    "- **Convenient**: Provides powerful array operations and broadcasting\n",
    "- **Foundation**: Many scientific libraries (pandas, scikit-learn, etc.) are built on NumPy"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# First, let's import NumPy\n",
    "import numpy as np\n",
    "\n",
    "# Check the version\n",
    "print(f\"NumPy version: {np.__version__}\")"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 1. Creating NumPy Arrays\n",
    "\n",
    "NumPy's main object is the homogeneous multidimensional array called `ndarray`. Let's explore different ways to create arrays."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Creating arrays from Python lists\n",
    "arr1 = np.array([1, 2, 3, 4, 5])\n",
    "print(\"1D array:\", arr1)\n",
    "print(\"Type:\", type(arr1))\n",
    "print(\"Data type:\", arr1.dtype)\n",
    "\n",
    "# Creating a 2D array (matrix)\n",
    "arr2 = np.array([[1, 2, 3], [4, 5, 6]])\n",
    "print(\"\\n2D array:\\n\", arr2)\n",
    "print(\"Shape:\", arr2.shape)  # (rows, columns)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Built-in functions to create arrays\n",
    "\n",
    "# Array of zeros\n",
    "zeros = np.zeros((3, 4))  # 3 rows, 4 columns\n",
    "print(\"Zeros:\\n\", zeros)\n",
    "\n",
    "# Array of ones\n",
    "ones = np.ones((2, 3))\n",
    "print(\"\\nOnes:\\n\", ones)\n",
    "\n",
    "# Array with a specific value\n",
    "full = np.full((2, 2), 7)\n",
    "print(\"\\nFull of 7s:\\n\", full)\n",
    "\n",
    "# Identity matrix\n",
    "identity = np.eye(3)\n",
    "print(\"\\nIdentity matrix:\\n\", identity)\n",
    "\n",
    "# Range of values\n",
    "range_arr = np.arange(0, 10, 2)  # start, stop, step\n",
    "print(\"\\nRange array:\", range_arr)\n",
    "\n",
    "# Evenly spaced values\n",
    "linspace_arr = np.linspace(0, 1, 5)  # start, stop, number of points\n",
    "print(\"\\nLinspace array:\", linspace_arr)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### 🏋️ Practice Exercise 1: Creating Arrays\n",
    "\n",
    "Complete the following tasks:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Exercise 1.1: Create a 1D array with numbers from 10 to 50 (inclusive)\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 1.2: Create a 3x3 matrix filled with the number 9\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 1.3: Create an array with 10 evenly spaced values between 0 and 100\n",
    "# Your code here:\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 2. Array Attributes and Properties\n",
    "\n",
    "NumPy arrays have several useful attributes that describe their structure."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "arr = np.array([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]])\n",
    "\n",
    "print(\"Array:\\n\", arr)\n",
    "print(\"\\nShape (dimensions):\", arr.shape)  # (3, 4) = 3 rows, 4 columns\n",
    "print(\"Number of dimensions:\", arr.ndim)   # 2D array\n",
    "print(\"Total number of elements:\", arr.size)  # 12 elements\n",
    "print(\"Data type:\", arr.dtype)  # int64 (or int32 depending on system)\n",
    "print(\"Item size (bytes):\", arr.itemsize)  # bytes per element\n",
    "print(\"Total size (bytes):\", arr.nbytes)  # total bytes"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 3. Array Indexing and Slicing\n",
    "\n",
    "Accessing and modifying array elements is fundamental to working with NumPy."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# 1D array indexing\n",
    "arr1d = np.array([10, 20, 30, 40, 50])\n",
    "print(\"Array:\", arr1d)\n",
    "print(\"First element:\", arr1d[0])\n",
    "print(\"Last element:\", arr1d[-1])\n",
    "print(\"Slice [1:4]:\", arr1d[1:4])  # indices 1, 2, 3\n",
    "print(\"Every 2nd element:\", arr1d[::2])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# 2D array indexing\n",
    "arr2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])\n",
    "print(\"Array:\\n\", arr2d)\n",
    "print(\"\\nElement at [0, 0]:\", arr2d[0, 0])  # row 0, column 0\n",
    "print(\"Element at [1, 2]:\", arr2d[1, 2])  # row 1, column 2\n",
    "print(\"\\nFirst row:\", arr2d[0, :])  # all columns of row 0\n",
    "print(\"First column:\", arr2d[:, 0])  # all rows of column 0\n",
    "print(\"\\nSubarray (first 2 rows, first 2 cols):\\n\", arr2d[:2, :2])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Boolean indexing (fancy indexing)\n",
    "arr = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])\n",
    "print(\"Array:\", arr)\n",
    "\n",
    "# Create a boolean mask\n",
    "mask = arr > 5\n",
    "print(\"\\nMask (arr > 5):\", mask)\n",
    "print(\"Elements > 5:\", arr[mask])\n",
    "\n",
    "# Direct boolean indexing\n",
    "print(\"Even numbers:\", arr[arr % 2 == 0])"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### 🏋️ Practice Exercise 2: Indexing and Slicing"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Given array\n",
    "practice_arr = np.arange(1, 26).reshape(5, 5)\n",
    "print(\"Array:\\n\", practice_arr)\n",
    "\n",
    "# Exercise 2.1: Extract the center 3x3 subarray\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 2.2: Extract all elements greater than 15\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 2.3: Extract the diagonal elements (1, 7, 13, 19, 25)\n",
    "# Hint: Use np.diag() or fancy indexing\n",
    "# Your code here:\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 4. Array Operations\n",
    "\n",
    "NumPy supports element-wise operations, making mathematical operations on arrays very efficient."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Arithmetic operations\n",
    "a = np.array([1, 2, 3, 4])\n",
    "b = np.array([10, 20, 30, 40])\n",
    "\n",
    "print(\"a:\", a)\n",
    "print(\"b:\", b)\n",
    "print(\"\\nAddition (a + b):\", a + b)\n",
    "print(\"Subtraction (a - b):\", a - b)\n",
    "print(\"Multiplication (a * b):\", a * b)\n",
    "print(\"Division (b / a):\", b / a)\n",
    "print(\"Power (a ** 2):\", a ** 2)\n",
    "\n",
    "# Scalar operations\n",
    "print(\"\\nScalar multiplication (a * 10):\", a * 10)\n",
    "print(\"Scalar addition (a + 5):\", a + 5)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Universal functions (ufuncs)\n",
    "arr = np.array([1, 4, 9, 16, 25])\n",
    "\n",
    "print(\"Array:\", arr)\n",
    "print(\"Square root:\", np.sqrt(arr))\n",
    "print(\"Exponential:\", np.exp(arr[:3]))  # e^x for first 3 elements\n",
    "print(\"Logarithm:\", np.log(arr))\n",
    "print(\"Sine:\", np.sin(arr))\n",
    "\n",
    "# Trigonometric functions work with radians\n",
    "angles = np.array([0, np.pi/2, np.pi])\n",
    "print(\"\\nSin of angles:\", np.sin(angles))"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 5. Aggregation Functions\n",
    "\n",
    "NumPy provides functions to compute statistics and aggregate data."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "arr = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])\n",
    "print(\"Array:\\n\", arr)\n",
    "\n",
    "# Aggregations on entire array\n",
    "print(\"\\nSum:\", np.sum(arr))\n",
    "print(\"Mean:\", np.mean(arr))\n",
    "print(\"Standard deviation:\", np.std(arr))\n",
    "print(\"Min:\", np.min(arr))\n",
    "print(\"Max:\", np.max(arr))\n",
    "print(\"Median:\", np.median(arr))\n",
    "\n",
    "# Aggregations along axes\n",
    "print(\"\\nSum along rows (axis=0):\", np.sum(arr, axis=0))  # column sums\n",
    "print(\"Sum along columns (axis=1):\", np.sum(arr, axis=1))  # row sums\n",
    "print(\"\\nMean of each row:\", np.mean(arr, axis=1))"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### 🏋️ Practice Exercise 3: Operations and Aggregations"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Create a random array for practice\n",
    "np.random.seed(42)\n",
    "data = np.random.randint(1, 100, size=(6, 4))\n",
    "print(\"Data array:\\n\", data)\n",
    "\n",
    "# Exercise 3.1: Calculate the mean of each column\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 3.2: Find the maximum value in each row\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 3.3: Normalize the array (subtract mean and divide by std)\n",
    "# Your code here:\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 6. Array Reshaping and Manipulation\n",
    "\n",
    "NumPy provides powerful tools to change array shapes and combine arrays."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Reshaping\n",
    "arr = np.arange(12)\n",
    "print(\"Original array:\", arr)\n",
    "\n",
    "reshaped = arr.reshape(3, 4)\n",
    "print(\"\\nReshaped to 3x4:\\n\", reshaped)\n",
    "\n",
    "reshaped2 = arr.reshape(2, 6)\n",
    "print(\"\\nReshaped to 2x6:\\n\", reshaped2)\n",
    "\n",
    "# Flatten back to 1D\n",
    "flattened = reshaped.flatten()\n",
    "print(\"\\nFlattened:\", flattened)\n",
    "\n",
    "# Transpose\n",
    "print(\"\\nTransposed:\\n\", reshaped.T)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Stacking arrays\n",
    "a = np.array([[1, 2], [3, 4]])\n",
    "b = np.array([[5, 6], [7, 8]])\n",
    "\n",
    "print(\"Array a:\\n\", a)\n",
    "print(\"\\nArray b:\\n\", b)\n",
    "\n",
    "# Vertical stack (along rows)\n",
    "v_stack = np.vstack((a, b))\n",
    "print(\"\\nVertical stack:\\n\", v_stack)\n",
    "\n",
    "# Horizontal stack (along columns)\n",
    "h_stack = np.hstack((a, b))\n",
    "print(\"\\nHorizontal stack:\\n\", h_stack)\n",
    "\n",
    "# Concatenate with axis specification\n",
    "concat = np.concatenate((a, b), axis=0)  # same as vstack\n",
    "print(\"\\nConcatenate (axis=0):\\n\", concat)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 7. Broadcasting\n",
    "\n",
    "Broadcasting is a powerful mechanism that allows NumPy to work with arrays of different shapes when performing arithmetic operations."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Broadcasting with scalars\n",
    "arr = np.array([[1, 2, 3], [4, 5, 6]])\n",
    "print(\"Array:\\n\", arr)\n",
    "print(\"\\nArray + 10:\\n\", arr + 10)\n",
    "\n",
    "# Broadcasting with 1D array\n",
    "row = np.array([10, 20, 30])\n",
    "print(\"\\nRow array:\", row)\n",
    "print(\"\\nArray + row:\\n\", arr + row)\n",
    "\n",
    "# Broadcasting with column\n",
    "col = np.array([[100], [200]])\n",
    "print(\"\\nColumn array:\\n\", col)\n",
    "print(\"\\nArray + col:\\n\", arr + col)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### 🏋️ Practice Exercise 4: Reshaping and Broadcasting"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Exercise 4.1: Create a 4x4 array with values 1-16 and reshape it to 2x8\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 4.2: Create two arrays and stack them horizontally\n",
    "# arr1 = [[1,2], [3,4]], arr2 = [[5,6], [7,8]]\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 4.3: Use broadcasting to add [1, 2, 3] to each row of a 4x3 matrix of zeros\n",
    "# Your code here:\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 8. Linear Algebra with NumPy\n",
    "\n",
    "NumPy provides comprehensive linear algebra operations through `np.linalg`."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Matrix multiplication\n",
    "A = np.array([[1, 2], [3, 4]])\n",
    "B = np.array([[5, 6], [7, 8]])\n",
    "\n",
    "print(\"Matrix A:\\n\", A)\n",
    "print(\"\\nMatrix B:\\n\", B)\n",
    "\n",
    "# Dot product (matrix multiplication)\n",
    "print(\"\\nA @ B (matrix multiplication):\\n\", A @ B)\n",
    "print(\"\\nEquivalent: np.dot(A, B):\\n\", np.dot(A, B))\n",
    "\n",
    "# Element-wise multiplication (different!)\n",
    "print(\"\\nA * B (element-wise):\\n\", A * B)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Other linear algebra operations\n",
    "matrix = np.array([[1, 2], [3, 4]])\n",
    "\n",
    "print(\"Matrix:\\n\", matrix)\n",
    "print(\"\\nDeterminant:\", np.linalg.det(matrix))\n",
    "print(\"\\nInverse:\\n\", np.linalg.inv(matrix))\n",
    "\n",
    "# Eigenvalues and eigenvectors\n",
    "eigenvalues, eigenvectors = np.linalg.eig(matrix)\n",
    "print(\"\\nEigenvalues:\", eigenvalues)\n",
    "print(\"\\nEigenvectors:\\n\", eigenvectors)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 9. Random Number Generation\n",
    "\n",
    "NumPy has a powerful random module for generating random numbers."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Set seed for reproducibility\n",
    "np.random.seed(42)\n",
    "\n",
    "# Random floats between 0 and 1\n",
    "print(\"Random floats:\", np.random.rand(5))\n",
    "\n",
    "# Random integers\n",
    "print(\"\\nRandom integers (1-10):\", np.random.randint(1, 11, size=5))\n",
    "\n",
    "# Random normal distribution\n",
    "normal = np.random.randn(5)  # mean=0, std=1\n",
    "print(\"\\nRandom normal:\", normal)\n",
    "\n",
    "# Random choice\n",
    "choices = np.random.choice(['a', 'b', 'c', 'd'], size=10)\n",
    "print(\"\\nRandom choices:\", choices)\n",
    "\n",
    "# Random 2D array\n",
    "random_matrix = np.random.rand(3, 3)\n",
    "print(\"\\nRandom 3x3 matrix:\\n\", random_matrix)"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### 🏋️ Practice Exercise 5: Comprehensive Challenge\n",
    "\n",
    "Let's put it all together with a realistic data analysis scenario!"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Scenario: You have test scores for 50 students across 4 subjects\n",
    "np.random.seed(123)\n",
    "scores = np.random.randint(60, 100, size=(50, 4))\n",
    "print(\"Student scores (50 students, 4 subjects):\\n\", scores[:5])  # Show first 5\n",
    "\n",
    "# Exercise 5.1: Calculate the average score for each subject\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 5.2: Find the top 5 students based on total score\n",
    "# Hint: Use np.sum() with axis parameter, then np.argsort()\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 5.3: Create a boolean array showing which students scored above 85 in ALL subjects\n",
    "# Hint: Use comparison and np.all()\n",
    "# Your code here:\n",
    "\n",
    "\n",
    "# Exercise 5.4: Normalize each subject's scores (0-1 range)\n",
    "# Formula: (x - min) / (max - min)\n",
    "# Your code here:\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## 10. Advanced Topics: Vectorization\n",
    "\n",
    "Vectorization is the practice of replacing explicit loops with array expressions. It's one of the key reasons NumPy is so fast."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "import time\n",
    "\n",
    "# Non-vectorized approach (slow)\n",
    "def slow_sum(n):\n",
    "    result = 0\n",
    "    for i in range(n):\n",
    "        result += i\n",
    "    return result\n",
    "\n",
    "# Vectorized approach (fast)\n",
    "def fast_sum(n):\n",
    "    return np.sum(np.arange(n))\n",
    "\n",
    "# Compare performance\n",
    "n = 1000000\n",
    "\n",
    "start = time.time()\n",
    "slow_result = slow_sum(n)\n",
    "slow_time = time.time() - start\n",
    "\n",
    "start = time.time()\n",
    "fast_result = fast_sum(n)\n",
    "fast_time = time.time() - start\n",
    "\n",
    "print(f\"Slow approach: {slow_time:.4f} seconds\")\n",
    "print(f\"Fast approach: {fast_time:.4f} seconds\")\n",
    "print(f\"Speedup: {slow_time/fast_time:.2f}x faster!\")"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Summary\n",
    "\n",
    "Congratulations! You've learned:\n",
    "\n",
    "1. ✅ Creating NumPy arrays in various ways\n",
    "2. ✅ Array attributes and properties\n",
    "3. ✅ Indexing, slicing, and boolean indexing\n",
    "4. ✅ Array operations and universal functions\n",
    "5. ✅ Aggregation functions and statistics\n",
    "6. ✅ Reshaping and manipulating arrays\n",
    "7. ✅ Broadcasting for efficient operations\n",
    "8. ✅ Linear algebra operations\n",
    "9. ✅ Random number generation\n",
    "10. ✅ The power of vectorization\n",
    "\n",
    "### Next Steps:\n",
    "- Explore NumPy's documentation: https://numpy.org/doc/\n",
    "- Practice with real datasets\n",
    "- Learn pandas (built on NumPy) for data analysis\n",
    "- Explore scikit-learn for machine learning (uses NumPy extensively)\n",
    "\n",
    "Keep practicing and happy coding! 🚀"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
