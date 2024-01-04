﻿


# Arabic Numerals Identification using Neural Networks

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

[Appendix 1: Code	12](#_toc155290225)

[Code for the networks:	12](#_toc155290226)

[Character Recognition	12](#_toc155290227)

[Defining the Problem	12](#_toc155290228)

[Creating the Neural Networks	13](#_toc155290229)

[Training the Neural Networks	15](#_toc155290230)

[Code for training dataset:	17](#_toc155290231)





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
# <a name="_toc155290225"></a>Appendix 1: Code
## <a name="_toc155290226"></a>**Code for the networks:**
# <a name="_toc155290227"></a>Character Recognition
This example illustrates how to train a neural network to perform simple character recognition.
## <a name="_toc155290228"></a>Defining the Problem
The script prprob defines a matrix 7 with 5 columns, one for each number. Each matrix has 35 values which can either be 1 or 0. Each matrix of 35 values defines a 5x7 bitmap of a number.

The matrix T is a 5x7 identity matrix which maps the 35 input vectors to the 35 classes.

[X,T] = numberVariations;

Here is the first number, note that numbers are randomized so this is going to be a random number, is plotted as a bit map.

plotchar(X(:,1))






disp(T(:,1))

`     `2

## <a name="_toc155290229"></a>Creating the Neural Networks
To solve this problem we will use feedforward neural networks set up for pattern recognition with different hidden neurons and layers, and after wards we will take a majority vote for the answer.

Since the neural network is initialized with random initial weights, the results after training vary slightly every time the example is run, we will use 'trainrp' resilient backpropagation algorithm for it's good performance time and output.

% setdemorandstream(pi);

net1 = feedforwardnet([65 65 65],'trainrp');%train using resilient backpropagation algorithm

net1.layers{1}.transferFcn = 'softmax';

net1.layers{2}.transferFcn = 'softmax';

net1.layers{3}.transferFcn = 'softmax';

net1.layers{4}.transferFcn = 'tansig';

%view(net1)

net1.trainParam.max\_fail=1000;%maximum number of validation checks 1000

%%%%Net2%%%

net2 = feedforwardnet([32 65 32],'trainrp');

net2.layers{1}.transferFcn = 'softmax';

net2.layers{2}.transferFcn = 'softmax';

net2.layers{3}.transferFcn = 'softmax';

net2.layers{4}.transferFcn = 'tansig';

net2.trainParam.max\_fail=1000;

%%%%Net3%%%

net3 = feedforwardnet([35 122 35],'trainrp');

net3.layers{1}.transferFcn = 'softmax';

net3.layers{2}.transferFcn = 'softmax';

net3.layers{3}.transferFcn = 'softmax';

net3.layers{4}.transferFcn = 'tansig';

net3.trainParam.max\_fail=1000;

%%%%Net4%%%

net4 = feedforwardnet([35 35],'trainrp');

net4.layers{1}.transferFcn = 'softmax';

net4.layers{2}.transferFcn = 'softmax';

net4.layers{3}.transferFcn = 'tansig';

net4.trainParam.max\_fail=1000;

%%%%Net5%%%

net5 = feedforwardnet([65],'trainrp');

net5.layers{1}.transferFcn = 'softmax';

net5.layers{2}.transferFcn = 'tansig';

net5.trainParam.max\_fail=1000;

%%%%Net6%%%

net6 = feedforwardnet([32 40],'trainrp');

net6.layers{1}.transferFcn = 'softmax';

net6.layers{2}.transferFcn = 'softmax';

net6.layers{3}.transferFcn = 'tansig';

net6.trainParam.max\_fail=1000;

%%%%Net7%%%

net7 = feedforwardnet([12 12],'trainrp');

net7.layers{1}.transferFcn = 'softmax';

net7.layers{2}.transferFcn = 'softmax';

net7.layers{3}.transferFcn = 'tansig';

% net7.layers{4}.transferFcn = 'softmax';

% net7.layers{5}.transferFcn = 'softmax';

% net7.layers{6}.transferFcn = 'tansig';

net7.trainParam.max\_fail=1000;

%%%%Net8%%%

net8 = feedforwardnet([128 66 128],'trainrp');%keep

net8.layers{1}.transferFcn = 'softmax';

net8.layers{2}.transferFcn = 'softmax';

net8.layers{3}.transferFcn = 'softmax';

net8.layers{4}.transferFcn = 'tansig';

net8.trainParam.max\_fail=1000;

%%%%Net9%%%

net9 = feedforwardnet([128],'trainrp');

net9.layers{1}.transferFcn = 'softmax';

net9.layers{2}.transferFcn = 'tansig';

% net9.layers{3}.transferFcn = 'softmax';

% net9.layers{4}.transferFcn = 'softmax';

% net9.layers{4}.transferFcn = 'softmax';

% net9.layers{5}.transferFcn = 'softmax';

% net9.layers{6}.transferFcn = 'tansig';

net9.trainParam.max\_fail=1000;

## <a name="_toc155290230"></a>Training the Neural Networks
The function train divides up the data into training, validation and test sets. The training set is used to update the network, the validation set is used to stop the network before it overfits the training data, thus preserving good generalization. The test set acts as a completely independent measure of how well the network can be expected to do on new samples.

Training stops when the network is no longer likely to improve on the training or validation sets.

%net1.divideFcn = '';

`  `%net1.divideParam.trainRatio = 90/100;

`  `%net1.divideParam.testRatio = 5/100;

`  `%net1.divideParam.valRatio = 5/100;

` `net1.trainParam.epochs=100000;

net1 = train(net1,X,T,'useParallel','yes');

pause();

%%%Net2%%%%

` `net2.trainParam.epochs=100000;

net2 = train(net2,X,T,'useParallel','yes');

pause();

%%%Net3%%%%

` `net3.trainParam.epochs=100000;

net3 = train(net3,X,T,'useParallel','yes');

pause();

%%%Net4%%%%

` `net4.trainParam.epochs=100000;

net4 = train(net4,X,T,'useParallel','yes');

pause();

%%%Net5%%%%

` `net5.trainParam.epochs=100000;

net5 = train(net5,X,T,'useParallel','yes');

pause();

%%%Net6%%%%

net6.trainParam.epochs=100000;

net6= train(net6,X,T,'useParallel','yes');

pause();

%%%Net7%%%%

net7.trainParam.epochs=100000;

net7= train(net7,X,T,'useParallel','yes');

pause();

%%%Net8%%%%

net8.trainParam.epochs=100000;

net8= train(net8,X,T,'useParallel','yes');

pause();

%%%Net9%%%%

` `net9.trainParam.epochs=100000;

net9 = train(net9,X,T,'useParallel','yes');







## <a name="_toc155290231"></a>**Code for training dataset:**
function [shuffled\_dataset,shuffled\_targets] = numberVariations()



% Variations for Digit "0"

zero\_variations = [

`    `% Digit "0" - Variation 1

`    `[0 0 1 0 0 ...

`     `0 1 0 1 0 ...

`     `1 0 0 0 1 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 2

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 3

`    `[1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1];



`     `% Digit "0" - Variation 4

`    `[0 1 1 1 0 ...

`     `1 1 0 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 0 1 1 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 5

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 6

`    `[0 0 0 0 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`      `% Digit "0" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0];



`      `% Digit "0" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`      `% Digit "0" - Variation 9

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 1 0 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 0 1 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 10

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "0" - Variation 11

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 12

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "0" - Variation 13

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 14

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0];



`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];

` `];

% Transpose the variations

zero\_variations = zero\_variations';

zerotraget = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];

zero\_variations\_1 = [

`    `% Digit "0" - Variation 1

`    `[0 0 0 1 0 ...

`     `0 0 1 0 1 ...

`     `0 1 0 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];

`     `% Digit "0" - Variation 2

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 3

`    `[0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "0" - Variation 4

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 1 0 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 0 1 1 ...

`     `0 1 1 1 0 ];



`     `% Digit "0" - Variation 5

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "0" - Variation 6

`    `[0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 0 0];



`      `% Digit "0" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ];



`      `% Digit "0" - Variation 8

`    `[1 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0 ];



`      `% Digit "0" - Variation 9

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 1 0 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 0 1 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 10

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "0" - Variation 11

`    `[0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 12

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "0" - Variation 13

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0];



`     `% Digit "0" - Variation 14

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 0];



`    `[0 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 1 0];

` `];

% Transpose the variations

zero\_variations\_1 = zero\_variations\_1';

zerotraget\_1 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];

% Variations for Digit "1"

one\_variations = [

`    `% Digit "1" - Variation 1

`   `[0 0 0 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 1 1 1];

`    `% Digit "1" - Variation 2

`   `[0 0 0 0 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 1 1 1 ...

`    `1 1 1 1 1];

`    `% Digit "1" - Variation 3

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];

`    `% Digit "1" - Variation 4

`   `[0 0 1 0 0 ...

`    `0 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 1 1 1 0];

`    `% Digit "1" - Variation 5

`    `[0 0 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 1 1 1 0];

`    `% Digit "1" - Variation 6

`   `[0 0 0 0 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 1 1 1 0];

`    `% Digit "1" - Variation 7

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 0];

`    `% Digit "1" - Variation 8

`   `[0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1];

`    `% Digit "1" - Variation 9

`   `[1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0];

`    `% Digit "1" - Variation 10

`   `[0 0 0 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0];



`     `% Digit "1" - Variation 11

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 1 1 0];



`     `% Digit "1" - Variation 12

`   `[0 0 0 0 0 ...

`    `0 0 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "1" - Variation 13

`   `[0 0 0 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "1" - Variation 14

`   `[0 0 0 0 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 1];





`     `% Digit "1" - Variation 15

`   `[1 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `1 1 0 0 0];

];

% Transpose the variations

one\_variations = one\_variations';

onetraget = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ];


% Variations for Digit "1"

one\_variations\_1 = [

`    `% Digit "1" - Variation 1

`   `[0 1 0 0 0 ...

`    `1 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `1 1 1 0 1];

`    `% Digit "1" - Variation 2

`   `[1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 1 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 0 0 0];

`    `% Digit "1" - Variation 3

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `1 0 0 0 0];

`    `% Digit "1" - Variation 4

`   `[0 0 1 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 1 1 0 ...

`    `0 1 1 1 1];

`    `% Digit "1" - Variation 5

`    `[0 1 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 1 1 0 0];

`    `% Digit "1" - Variation 6

`   `[0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 1 1 0];

`    `% Digit "1" - Variation 7

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0];

`    `% Digit "1" - Variation 8

`   `[0 0 1 1 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 1 1];

`    `% Digit "1" - Variation 9

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];

`    `% Digit "1" - Variation 10

`   `[1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "1" - Variation 11

`   `[1 0 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 0 0 0 1];



`     `% Digit "1" - Variation 12

`   `[0 0 0 0 0 ...

`    `0 0 0 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "1" - Variation 13

`   `[0 0 0 1 0 ...

`    `0 0 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "1" - Variation 14

`   `[0 0 0 0 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0];





`     `% Digit "1" - Variation 15

`   `[0 0 0 0 1 ...

`    `0 0 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 0 0 0 ...

`    `1 1 0 0 0];

];

% Transpose the variations

one\_variations\_1 = one\_variations\_1';

onetraget\_1 = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ];

% Variations for Digit "2"

two\_variations = [

`    `% Digit "2" - Variation 1

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 0];

`    `% Digit "2" - Variation 2

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 1 1 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `1 1 0 0 0 ...

`    `1 1 1 1 0];

`    `% Digit "2" - Variation 3

`   `[1 1 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 1 1 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 0];

`    `% Digit "2" - Variation 4

`   `[1 1 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 1 1 1 0 ...

`    `0 1 0 0 0 ...

`    `0 1 1 1 1];

`    `% Digit "2" - Variation 5

`   `[0 0 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1];


`    `% Digit "2" - Variation 6

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1];

`    `% Digit "2" - Variation 7

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `1 1 1 1 1 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1];

`    `% Digit "2" - Variation 8

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `1 1 1 1 1 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1];

`    `% Digit "2" - Variation 9

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `1 1 1 1 1 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1 ...

`    `0 0 0 0 0];

`    `% Digit "2" - Variation 10

`   `[1 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 11

`   `[1 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 12

`   `[1 1 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 1 1 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 13

`   `[1 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 14

`   `[1 1 1 1 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 1 1 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 15

`   `[0 1 1 1 0 ...

`    `1 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 1 1 1 1];





];

two\_variations=two\_variations';

twotraget = [2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ];

% Variations for Digit "2"

two\_variations\_1 = [

`    `% Digit "2" - Variation 1

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 1 1 1 0 ...

`    `1 1 1 1 0];

`    `% Digit "2" - Variation 2

`   `[0 0 0 0 0 ...

`    `1 1 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 0 0 ...

`    `1 1 0 0 0 ...

`    `1 1 1 1 0];

`    `% Digit "2" - Variation 3

`   `[1 1 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 0 0 1 0 ...

`    `0 1 1 1 0 ...

`    `1 1 1 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1];

`    `% Digit "2" - Variation 4

`   `[1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `1 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 1 1 1 1 ...

`    `0 1 0 0 0 ...

`    `0 1 1 1 1];

`    `% Digit "2" - Variation 5

`   `[1 1 1 1 1 ...

`    `1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1];


`    `% Digit "2" - Variation 6

`   `[1 1 1 1 1 ...

`    `1 1 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 0 1 ...

`    `0 1 1 1 1 ...

`    `1 1 0 0 0 ...

`    `1 1 1 1 1];

`    `% Digit "2" - Variation 7

`   `[0 0 0 0 0 ...

`    `0 1 1 1 0 ...

`    `0 0 0 1 0 ...

`    `0 1 1 1 0 ...

`    `0 1 0 0 0 ...

`    `0 1 1 1 0 ...

`    `0 0 0 0 0];

`    `% Digit "2" - Variation 8

`   `[1 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `1 1 1 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];

`    `% Digit "2" - Variation 9

`   `[0 0 1 1 1 ...

`    `0 0 0 0 1 ...

`    `0 0 1 1 1 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0];

`    `% Digit "2" - Variation 10

`   `[1 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 0 0 0 0 ...

`    `1 1 1 1 1];



`     `% Digit "2" - Variation 11

`   `[0 0 1 1 1 ...

`    `1 0 0 0 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 0 0 0 ...

`    `0 1 1 1 1 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 12

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 1 1 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 1 1 0];



`     `% Digit "2" - Variation 13

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `1 1 1 0 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 14

`   `[0 0 0 0 0 ...

`    `0 0 0 0 0 ...

`    `1 1 1 1 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 1 1 1 1 ...

`    `0 0 0 0 0];



`     `% Digit "2" - Variation 15

`   `[0 0 0 0 0 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 1 ...

`    `0 0 0 0 1 ...

`    `0 0 0 1 0 ...

`    `0 0 1 0 0 ...

`    `0 0 1 1 1];





];

two\_variations\_1=two\_variations\_1';

twotraget\_1 = [2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ];

three\_variations = [

`    `% Digit "3" - Variation 1

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 2

`    `[0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1];



`    `% Digit "3" - Variation 3

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 4

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 5

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 6

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 7

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 8

`    `[0 0 1 1 0 ...

`     `0 1 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 0 1 1 0];



`    `% Digit "3" - Variation 9

`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "3" - Variation 10

`    `[1 1 0 0 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0];





`      `% Digit "3" - Variation 11

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`      `% Digit "3" - Variation 12

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1];



`      `% Digit "3" - Variation 13

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1];



`      `% Digit "3" - Variation 14

`    `[0 0 0 1 0 ...

`     `0 0 1 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 0 1 0];



`      `% Digit "3" - Variation 15

`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];

];

% Transpose the variations

three\_variations = three\_variations';

threetraget = [3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 ];


three\_variations\_1 = [

`    `% Digit "3" - Variation 1

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 1 1 1];



`    `% Digit "3" - Variation 2

`    `[1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 1 0 0];



`    `% Digit "3" - Variation 3

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "3" - Variation 4

`    `[0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "3" - Variation 5

`    `[0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "3" - Variation 6

`    `[0 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `0 0 1 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "3" - Variation 7

`    `[1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1];



`    `% Digit "3" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0];



`    `% Digit "3" - Variation 9

`    `[0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0];



`     `% Digit "3" - Variation 10

`    `[1 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0];





`      `% Digit "3" - Variation 11

`    `[0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 0 0];



`      `% Digit "3" - Variation 12

`    `[0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0];



`      `% Digit "3" - Variation 13

`    `[0 0 1 0 0 ...

`     `0 1 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0];



`      `% Digit "3" - Variation 14

`    `[0 0 0 1 0 ...

`     `0 0 1 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 0 1 0];



`      `% Digit "3" - Variation 15

`    `[0 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 0 0 0 ...

`     `0 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];

];

% Transpose the variations

three\_variations\_1 = three\_variations\_1';

threetraget\_1 = [3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 ];


four\_variations = [

`    `% Digit "4" - Variation 1

`    `[0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`    `% Digit "4" - Variation 2

`    `[1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`    `% Digit "4" - Variation 3

`    `[1 0 0 1 0 ...

`     `0 1 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "4" - Variation 4

`    `[1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`     `% Digit "4" - Variation 5

`    `[0 0 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`     `% Digit "4" - Variation 6

`    `[0 1 0 0 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "4" - Variation 7

`    `[1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`    `% Digit "4" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "4" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 0 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`    `% Digit "4" - Variation 10

`    `[0 0 0 1 0 ...

`     `0 0 0 0 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`      `% Digit "4" - Variation 11

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1];



`      `% Digit "4" - Variation 12

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0];



`      `% Digit "4" - Variation 13

`    `[0 0 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 0 0];



`      `% Digit "4" - Variation 14

`    `[1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`       `% Digit "4" - Variation 15

`    `[1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];

` `];

`     `% Transpose the variations

four\_variations = four\_variations';

fourtraget = [4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 ];



four\_variations\_1 = [

`    `% Digit "4" - Variation 1

`    `[0 0 1 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`    `% Digit "4" - Variation 2

`    `[1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0];



`    `% Digit "4" - Variation 3

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0];



`    `% Digit "4" - Variation 4

`    `[0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "4" - Variation 5

`    `[1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0];



`     `% Digit "4" - Variation 6

`    `[0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0];



`    `% Digit "4" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 0 0 1 0 ...

`     `1 0 1 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`    `% Digit "4" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0];



`    `% Digit "4" - Variation 9

`    `[0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`    `% Digit "4" - Variation 10

`    `[0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ];



`      `% Digit "4" - Variation 11

`    `[1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`      `% Digit "4" - Variation 12

`    `[1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`      `% Digit "4" - Variation 13

`    `[1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`      `% Digit "4" - Variation 14

`    `[1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`       `% Digit "4" - Variation 15

`    `[1 0 0 0 1 ...

`     `1 1 0 0 1 ...

`     `1 1 0 0 1 ...

`     `1 1 1 1 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];

` `];

`     `% Transpose the variations

four\_variations\_1 = four\_variations\_1';

fourtraget\_1 = [4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 ];

five\_variations = [

`    `% Digit "5" - Variation 1

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`     `% Digit "5" - Variation 2

`    `[1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 1 0];



`    `% Digit "5" - Variation 3

`    `[1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "5" - Variation 4

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0];



`    `% Digit "5" - Variation 5

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 0 1 1 ...

`     `0 0 1 0 0];



`     `% Digit "5" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "5" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 1 0];



`     `% Digit "5" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 0 0];



`     `% Digit "5" - Variation 9

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 1 0];



`     `% Digit "5" - Variation 10

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 1 0];



`     `% Digit "5" - Variation 11

`    `[0 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 0 0 0];



`     `% Digit "5" - Variation 12

`    `[0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0];



`     `% Digit "5" - Variation 13

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 1 0];



`     `% Digit "5" - Variation 14

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0];



`      `% Digit "5" - Variation 15

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `1 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];

];

` `% Transpose the variations

five\_variations = five\_variations';

fivetraget = [5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 ];

five\_variations\_1 = [

`    `% Digit "5" - Variation 1

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1];



`     `% Digit "5" - Variation 2

`    `[0 0 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "5" - Variation 3

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0 ];

`    `% Digit "5" - Variation 4

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ];



`    `% Digit "5" - Variation 5

`    `[0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "5" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "5" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "5" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0];



`     `% Digit "5" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0];



`     `% Digit "5" - Variation 10

`    `[0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "5" - Variation 11

`    `[1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 1 0 0];



`     `% Digit "5" - Variation 12

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`     `% Digit "5" - Variation 13

`    `[0 0 0 0 1 ...

`     `0 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 1 0];



`     `% Digit "5" - Variation 14

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0];



`      `% Digit "5" - Variation 15

`    `[0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 1 0 0 0];

];

` `% Transpose the variations

five\_variations\_1 = five\_variations\_1';

fivetraget\_1 = [5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 ];


six\_variations = [

`    `% Digit "6" - Variation 1

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1];



`     `% Digit "6" - Variation 2

`    `[1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0];



`    `% Digit "6" - Variation 3

`    `[1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "6" - Variation 4

`    `[1 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0];



`    `% Digit "6" - Variation 5

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "6" - Variation 8

`    `[0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 0 0];



`     `% Digit "6" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 0 0 1 1 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "6" - Variation 10

`    `[0 0 0 1 1 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "6" - Variation 11

`    `[0 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "6" - Variation 12

`    `[1 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "6" - Variation 13

`    `[0 0 0 0 0 ...

`     `1 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "6" - Variation 14

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 1 ...

`     `0 0 1 1 1];



`      `% Digit "6" - Variation 15

`    `[0 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];

];

` `% Transpose the variations

six\_variations = six\_variations';

sixtraget = [6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 ];


six\_variations\_1 = [

`    `% Digit "6" - Variation 1

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 2

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0];



`    `% Digit "6" - Variation 3

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1];



`    `% Digit "6" - Variation 4

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0];



`    `% Digit "6" - Variation 5

`    `[1 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 6

`    `[0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 7

`    `[0 0 1 1 1 ...

`     `0 0 1 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "6" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "6" - Variation 10

`    `[0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ];

`     `% Digit "6" - Variation 11

`    `[0 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "6" - Variation 12

`    `[1 1 1 1 1 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "6" - Variation 13

`    `[0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0];





`     `% Digit "6" - Variation 14

`    `[0 1 1 1 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0];





`      `% Digit "6" - Variation 15

`    `[1 1 1 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0];

];

` `% Transpose the variations

six\_variations\_1 = six\_variations\_1';

sixtraget\_1 = [6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 ];


seven\_variations = [

`    `% Digit "7" - Variation 1

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];



`     `% Digit "7" - Variation 2

`    `[1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0];



`    `% Digit "7" - Variation 3

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "7" - Variation 4

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0];



`    `% Digit "7" - Variation 5

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0];



`     `% Digit "7" - Variation 8

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `1 0 0 0 0];



`     `% Digit "7" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "7" - Variation 10

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0];





`     `% Digit "7" - Variation 11

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0];





`     `% Digit "7" - Variation 12

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0];





`     `% Digit "7" - Variation 13

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0];





`     `% Digit "7" - Variation 14

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 1 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0];





`     `% Digit "7" - Variation 15

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1];

];

` `% Transpose the variations

seven\_variations = seven\_variations';

seventraget = [7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 ];


seven\_variations\_1 = [

`    `% Digit "7" - Variation 1

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 2

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "7" - Variation 3

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "7" - Variation 4

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "7" - Variation 5

`    `[0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 7

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 8

`    `[1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 9

`    `[1 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "7" - Variation 10

`    `[0 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];





`     `% Digit "7" - Variation 11

`    `[0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0 ...

`     `0 0 0 0 0];





`     `% Digit "7" - Variation 12

`    `[0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0];





`     `% Digit "7" - Variation 13

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 0 0 0 0];





`     `% Digit "7" - Variation 14

`    `[1 1 0 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0 ...

`     `0 1 0 0 0];





`     `% Digit "7" - Variation 15

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0];

];

` `% Transpose the variations

seven\_variations\_1 = seven\_variations\_1';

seventraget\_1 = [7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 ];

eight\_variations = [

`    `% Digit "8" - Variation 1

`    `[1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1];



`     `% Digit "8" - Variation 2

`    `[0 1 1 0 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`    `% Digit "8" - Variation 3

`    `[1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "8" - Variation 4

`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0];



`    `% Digit "8" - Variation 5

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0];



`     `% Digit "8" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "8" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "8" - Variation 8

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0];



`     `% Digit "8" - Variation 9

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 1];



`     `% Digit "8" - Variation 10

`    `[1 1 1 1 1 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 1 0 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];







`     `% Digit "8" - Variation 11

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 0];





`     `% Digit "8" - Variation 12

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0];





`     `% Digit "8" - Variation 13

`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];





`     `% Digit "8" - Variation 14

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`       `% Digit "8" - Variation 15

`    `[0 0 0 0 0 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1];



];

` `% Transpose the variations

eight\_variations = eight\_variations';

eighttarget = [8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 ];


eight\_variations\_1 = [

`    `% Digit "8" - Variation 1

`    `[1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "8" - Variation 2

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "8" - Variation 3

`    `[0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`    `% Digit "8" - Variation 4

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 0];



`    `% Digit "8" - Variation 5

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1];



`     `% Digit "8" - Variation 6

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 0 0];



`     `% Digit "8" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0];



`     `% Digit "8" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0];



`     `% Digit "8" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0];



`     `% Digit "8" - Variation 10

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1];







`     `% Digit "8" - Variation 11

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0];





`     `% Digit "8" - Variation 12

`    `[0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ];





`     `% Digit "8" - Variation 13

`    `[0 0 0 0 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0];





`     `% Digit "8" - Variation 14

`    `[1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0 ];



`       `% Digit "8" - Variation 15

`    `[0 0 0 0 0 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1];



];

` `% Transpose the variations

eight\_variations\_1 = eight\_variations\_1';

eighttarget\_1 = [8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 ];

nine\_variations = [

`    `% Digit "9" - Variation 1

`    `[1 1 1 1 1 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `1 1 1 1 1];



`     `% Digit "9" - Variation 2

`    `[1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0];



`    `% Digit "9" - Variation 3

`    `[0 1 1 0 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`    `% Digit "9" - Variation 4

`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`    `% Digit "9" - Variation 5

`    `[0 0 1 0 0 ...

`     `1 1 0 1 1 ...

`     `1 0 0 0 1 ...

`     `1 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 0 0 1 1 ...

`     `0 1 1 0 0];



`     `% Digit "9" - Variation 6

`    `[0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 0 0 0];



`     `% Digit "9" - Variation 7

`    `[0 0 0 0 0 ...

`     `0 0 0 0 0 ...

`     `0 1 1 0 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "9" - Variation 8

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "9" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "9" - Variation 10

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 0 0 0 0 ...

`     `0 0 0 0 0];



`     `% Digit "9" - Variation 11

`    `[0 1 1 1 0 ...

`     `1 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `1 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "9" - Variation 12

`    `[0 0 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "9" - Variation 13

`    `[0 0 1 1 0 ...

`     `1 1 0 1 1 ...

`     `1 1 0 1 1 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 0 0];



`     `% Digit "9" - Variation 14

`    `[0 0 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 0 0];



`     `% Digit "9" - Variation 15

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0];

];


nine\_variations\_1 = [

`    `% Digit "9" - Variation 1

`    `[0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 1 0];



`     `% Digit "9" - Variation 2

`    `[1 1 1 1 0 ...

`     `1 0 0 1 0 ...

`     `1 0 0 1 0 ...

`     `1 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 0 0];



`    `% Digit "9" - Variation 3

`    `[0 1 1 1 1 ...

`     `0 1 0 0 1 ...

`     `0 1 0 0 1 ...

`     `0 1 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 1 1 1 0];



`    `% Digit "9" - Variation 4

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `1 1 1 0 0];



`    `% Digit "9" - Variation 5

`    `[0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "9" - Variation 6

`    `[1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 0 0 0 ];



`     `% Digit "9" - Variation 7

`    `[0 0 0 0 0 ...

`     `1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 0 0 0];



`     `% Digit "9" - Variation 8

`    `[0 0 0 0 0 ...

`     `0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0];



`     `% Digit "9" - Variation 9

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0];



`     `% Digit "9" - Variation 10

`    `[0 0 0 0 0 ...

`     `0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 1 1 1 0];



`     `% Digit "9" - Variation 11

`    `[0 0 1 1 1 ...

`     `0 0 1 0 1 ...

`     `0 0 1 1 1 ...

`     `0 0 0 0 1 ...

`     `0 0 0 0 1 ...

`     `0 0 1 1 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "9" - Variation 12

`    `[0 1 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 0 1 0 ...

`     `0 1 1 0 0 ...

`     `0 0 0 0 0 ];



`     `% Digit "9" - Variation 13

`    `[1 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 0 1 0 0 ...

`     `1 1 0 0 0 ...

`     `0 0 0 0 0 ];





`     `% Digit "9" - Variation 14

`    `[0 0 1 1 0 ...

`     `0 1 0 1 0 ...

`     `0 1 0 1 0 ...

`     `0 0 1 1 0 ...

`     `0 0 0 1 0 ...

`     `0 0 1 0 0 ...

`     `0 1 1 0 0];



`     `% Digit "9" - Variation 15

`    `[0 1 1 0 0 ...

`     `1 0 1 0 0 ...

`     `1 0 1 0 0 ...

`     `0 1 1 0 0 ...

`     `0 0 1 0 0 ...

`     `0 1 0 0 0 ...

`     `1 1 0 0 0];

];

` `% Transpose the variations

nine\_variations\_1 = nine\_variations\_1';

ninetarget\_1 = [9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ];


` `% Transpose the variations

nine\_variations = nine\_variations';

ninetarget = [9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ];

Training\_Data=[zero\_variations, zero\_variations\_1,one\_variations,one\_variations\_1 ...

`    `two\_variations,two\_variations\_1,three\_variations,three\_variations\_1,four\_variations,...

`    `four\_variations\_1,five\_variations,five\_variations\_1,six\_variations,six\_variations\_1,...

`    `seven\_variations,seven\_variations\_1,eight\_variations,eight\_variations\_1,nine\_variations,nine\_variations\_1];

targets=[zerotraget,zerotraget\_1,onetraget,onetraget\_1,twotraget,twotraget\_1,threetraget, ...

`    `threetraget\_1,fourtraget,fourtraget\_1,fivetraget,fivetraget\_1,sixtraget,...

`    `sixtraget\_1,seventraget,seventraget\_1,eighttarget,eighttarget\_1,ninetarget,ninetarget\_1];

%expand with the inverse of the data

Training\_Data\_and\_Inverse=[Training\_Data];%,not(Training\_Data)];

targets\_and\_Inverse=[targets];%,targets];

Xn = repmat(Training\_Data\_and\_Inverse,1,1);

Tn = repmat(targets\_and\_Inverse,1,1);

numNoise = 30;

Xn = min(max(repmat(Xn,1,numNoise)+randn(35,size(Xn,2)\*numNoise)\*0.2,0),1);%300\*numNoise)\*0.2,0),1);

Tn = repmat(Tn,1,numNoise);

full\_dataset = [Xn', Tn'];

% Shuffle the combined dataset randomly

shuffled\_full\_dataset = full\_dataset(randperm(size(full\_dataset, 1)), :);

% Extract shuffled input data and shuffled targets

shuffled\_dataset = shuffled\_full\_dataset(:, 1:end-1)';

shuffled\_targets = shuffled\_full\_dataset(:, end)';

end




` `Page 69
