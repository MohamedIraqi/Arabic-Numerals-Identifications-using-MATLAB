


# Arabic Numerals Identification using Neural Networks
on 5x7 grid
![Mars](Picture1.png)

**By:** 

**Mohamed Adel Iraqi Bakery**	

<a name="_toc155135195"></a>
# Contents
[Introduction:	4](#_toc155290210)

[Project Description:	5](#_toc155290211)

[Project Steps:	6](#_toc155290212)

[Data Sets:	6](#_toc155290213)

[Creating the Neural Network:	6](#_toc155290214)

[Output:	7](#_toc155290215)

[Building the GUI:	8](#_toc155290216)

[Test Cases:	9](#_toc155290217)

[User Inputs 1:	9](#_toc155290218)

[Users Inputs 8:	9](#_toc155290219)

[User Inputs 8 with an error:	10](#_toc155290220)

[Installation Guide	10](#_toc155290221)

[1.	Install MATLAB2023B or newer (works with MATLAB online too)	10](#_toc155290222)

[2.	Run the “Arabic_numbers_gui.mlappinstall” in matlab	10](#_toc155290223)

[References:	11](#_toc155290224)





Table of Figures

[Figure 1: Neural Network Diagram	3](#_toc155147693)

[Figure 2: Arabic Numbers	4](#_toc155147694)

[Figure 3: 2 variations of our Dataset	5](#_toc155147695)

[Figure 4: Layers of one network	6](#_toc155147696)

[Figure 5: Feed-Forward Neural Network	6](#_toc155147697)

[Figure 6: Output of Our Neural Network	6](#_toc155147698)

[Figure 7: GUI	7](#_toc155147699)

[Figure 8: First Test Case	8](#_toc155147700)

[Figure 9: Second Test Case	8](#_toc155147701)

[Figure 10: Third Test Case	9](#_toc155147702)


# <a name="_toc155290210"></a>Introduction:
A neural network is a computational model inspired by the structure and functioning of the human brain. It is a key component of machine learning, a broader field of artificial intelligence (AI). Neural networks are designed to recognize patterns, make decisions, and learn from data. At its core, a neural network consists of interconnected nodes, also known as neurons or artificial neurons, organized into layers. These layers are typically categorized into three types: input layer, hidden layers, and output layer. The input layer receives the initial data, the hidden layers process this information through weighted connections, and the output layer produces the result. The strength of neural networks lies in their ability to learn from data through a training process. During training, the network adjusts its internal parameters, known as weights and biases, to minimize the difference between its predictions and the actual outcomes in each dataset. This process, known as backpropagation, involves iteratively refining the network's parameters to improve its performance.

Neural networks can be applied to various tasks, including image and speech recognition, natural language processing, and decision-making. They excel in tasks where traditional rule-based programming may be challenging or impractical due to the complexity and variability of the input data. Deep learning, a subset of machine learning, leverages neural networks with multiple hidden layers, often referred to as deep neural networks. Deep learning has achieved remarkable success in various domains, leading to breakthroughs in areas such as computer vision, speech recognition, and natural language understanding.

In summary, neural networks are powerful computational models that mimic the structure and function of the human brain, enabling machines to learn and make decisions from data. Their versatility and ability to adapt to complex patterns make them a fundamental technology in the field of artificial intelligence.

![Picture2](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/97452e7a-adab-448e-b30d-c64ca939a98c)

<a name="_toc155135206"></a><a name="_toc155147693"></a>**Figure 1: Neural Network Diagram**
# <a name="_toc155135196"></a><a name="_toc155290211"></a>Project Description:
To use Fuzzy Logic system to recognize Arabic numerals and build a GUI to demonstrate how our system works.

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/a4098c0c-0820-4f5e-bebc-2465f1f5632e)
<a name="_toc155135207"></a><a name="_toc155147694"></a>**Figure 2: Arabic Numbers**

` `We will use the toolbox of neural network which is built inside the MATLAB, and MATLAB GUI to implement our project.

<a name="_toc155135197"></a>
# <a name="_toc155290212"></a>Project Steps:
## <a name="_toc155135198"></a><a name="_toc155290213"></a>**Data Sets:**
\- For the first part of our project we must create our dataset that our neural network will use to train and test, and those data sets will be our input layer.

\- We created 30 variations for each number so in total 300 variations, and then we added noise to each variation so we could increase the diversity of the dataset and improve the model's generalization.

\- Our variations are all 5\*7 matrix, so 35 input victors as following example:

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/22e77fbe-5f6c-4cba-8272-f953d4767c93)

<a name="_toc155135208"></a><a name="_toc155147695"></a>**Figure 3: 2 variations of our Dataset**
## <a name="_toc155135199"></a><a name="_toc155290214"></a>**Creating the Neural Network:**
\- After getting the data sets as our input, we must build our neural network to train on those data sets.

\- After a lot of testing on how we can get the best validation, we choose to build nine networks which are all feed-forward for pattern recognition with different number of layers and neurons, but our layers are mostly linear with the last layer being non-linear to increase the accuracy of our system.

\- We use resilient back propagation training technique as it is the best training method that outputted the best results as the average validation was around 97 % with this training method.

\- We used maximum number of validation checks = 1000 to avoid over fitting as much as possible, and number of epochs = 100000. 

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/eff5497d-452e-4ad1-adf9-81f6f5eb64e4)

<a name="_toc155135209"></a><a name="_toc155147696"></a>**Figure 4: Layers of one network**

In the previous network we used 2 layers (1 hidden layers), The hidden layer contains 65 neurons use SoftMax transfer functions, which is best for classification tasks, while the output layer is non-linear Symmetric sigmoid transfer function to get better accuracy.

After the training of the 9 networks, we take a majority vote for the final output, we gave the network with the best output more than one vote to increase its weight in the votes.

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/c2590d19-a009-430b-a90d-475057c8f5b0)

<a name="_toc155135210"></a><a name="_toc155147697"></a>**Figure 5: Feed-Forward Neural Network**
## <a name="_toc155135200"></a><a name="_toc155290215"></a>**Output:**

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/80610b7b-5e71-4eb2-b6dc-37d55253e8c3)

<a name="_toc155135211"></a><a name="_toc155147698"></a>**Figure 6: Output of Our Neural Network**

## <a name="_toc155135201"></a><a name="_toc155290216"></a>**Building the GUI:**
Our main reason of using a GUI, so that the user could enter the input easily and doesn’t have to enter the number bit by bit, so the user could simply click the boxes to get the number he wants, and the GUI will automatically output the number on the screen.

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/7a95f6ef-ef86-4036-a251-3316d0a5e09b)

<a name="_toc155135212"></a><a name="_toc155147699"></a>**Figure 7: GUI**

<a name="_toc155135202"></a>
## <a name="_toc155290217"></a>**Test Cases:**
### <a name="_toc155135203"></a><a name="_toc155290218"></a>**User Inputs 1:**

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/f8e50c11-899c-4988-845f-b335a7bb603b)

<a name="_toc155135213"></a><a name="_toc155147700"></a>**Figure 8: First Test Case**
### <a name="_toc155135204"></a><a name="_toc155290219"></a>**Users Inputs 8:**

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/1473d8f6-18f1-4162-850f-b2fb87d227be)

<a name="_toc155135214"></a><a name="_toc155147701"></a>**Figure 9: Second Test Case**
### <a name="_toc155135205"></a><a name="_toc155290220"></a>**User Inputs 8 with an error:**

![image](https://github.com/MohamedIraqi/Arabic_Numerals_Identifications/assets/59147217/20c356d3-7caf-4ca4-9b86-3556f3a26fe2)

<a name="_toc155135215"></a><a name="_toc155147702"></a>**Figure 10: Third Test Case**
# <a name="_toc155290221"></a>Installation Guide
1. # <a name="_toc155290222"></a>Install MATLAB2023B or newer (works with MATLAB online too)
1. # <a name="_toc155290223"></a>Run the “Arabic\_numbers\_gui.mlappinstall” in matlab
# <a name="_toc155290224"></a>References:
*Body fat Estimation - MATLAB & Simulink*. (n.d.). https://www.mathworks.com/help/releases/R2023b/deeplearning/ug/body-fat-estimation.html
