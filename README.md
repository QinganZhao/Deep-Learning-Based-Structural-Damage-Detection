<div align=center>
 
# Deep Learning based Structural Damage Detection

[**Franklin Zhao**](http://franklinzhao.top) (me:))

**Xuefeng Zhao** (my undergraduate advisor who supported this project) 

**Peng Zhao** (provided the data-set for this project)

June 2017

<div align=left>

## Project Summary

1. Developed a damage identification and localization technique for civil structures using convolutional neural networks (based on LeNet-5, AlexNet-8, ZFNet-8, and GoogLeNet(inception v1)-22).

2. Applied region-based convolutional neural networks (Faster-RCNN) to damage detection in real-time.

**Note: This project is mostly an application for masonry historic structures using fine-tuned deep learning algorithms. If you are more interested in the CNN architecture or implementation, there might not be much details. This project is aim to provide insights on artificial intelligence for infrastructural engineering.**

## Abstract

Manual inspection (i.e., visual inspection and/or with professional equipment) is the most predominant approach for identifying and assessing superficial damage of masonry historic structures at present. However, this method is costly and at times difficult to apply to remote structures or components. Existing convolutional neural network (CNN)‐based damage detection methods have not been specifically designed for the multiple damage identification of masonry historic structures. To overcome these limits, a deep architecture of CNN damage classification techniques for masonry historic structures is proposed in this article using a sliding window‐based CNN method to identify and locate four categories of damage (intact, crack, efflorescence, and spall) with an accuracy of 94.3%. This is the first attempt to identify the multidamage of historic masonry structures based on CNN techniques and achieve excellent classification results. The data are only trained and tested from images of the Forbidden City Wall in China, and the pixel resolutions of stretcher brick images and header brick images are 480 × 105 and 210 × 105, respectively. Two CNNs (AlexNet and GoogLeNet) are both trained on a small dataset (2,000 images for training, 400 images for validation and testing) and a large dataset (20,000 images for training, 4,000 images for validation and testing). The performance of the trained model (94.3% accuracy) is examined on five new images with 1,860 × 1,260 pixel resolutions.

## Implementation

**A Few Takeaways:**
If you are really into the algorithm, I would suggest you take Stanford [CS231N](http://cs231n.stanford.edu) first which is a really popular open course. If you are not very confident in Machine Learning, both Stanford [CS229](http://cs229.stanford.edu) and Berkeley [CS189](http://www.eecs189.org) are good resources. I would also suggest reading those papers presenting deep learning architectures that are among the top ranks in recent CV classification/object detection competitions.

**Dataset:**
You can either use our [dataset](https://pan.baidu.com/s/1NlwCz3P7sqb3d26p_CefbQ) or create your own dataset! Just take as many pictures of what your are interested in researching as possible. You might also want to use the crowdsourcing technology to let so many other people collect data for you!

**Training:**
The training environment depends on your dataset and CNNs. For example, if your dataset is large (GB/TB/PB), you might consider using distributed workstations instead of PCs, which also applies to deeper CNNs (ResNet, Inception v-4, etc.). You might also need GPU(s) for computing since it is much more faster that CPU-only.

<br /> 

For tools training the dataset, I would suggest using [TensorFlow](https://www.tensorflow.org) or [PyTorch](https://pytorch.org). But if you are only into the application, [Caffe](http://caffe.berkeleyvision.org) is fine. If you choose Caffe, the only thing you need to do is to change the hyperparameters in the .prototxt files.

**Application and visualization**
If your are going to apply deep learning to real-world engineering problems, only classifing the object in a CV way is not enough. You should figure out how to present or process the output. Also, applicable and reproducible are also very important. For example, you might ask yourself: What is the cost? How is the efficiency? Or does it even work in the real-world problems?

## Figure Illustration & Selected Results

<div align=center><img width="450" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig1.png>
 
**Fig. 1:** Schematic diagram of image classification for a brick unit

<br /> 
 
<img width="450" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig2.png>

**Fig. 2:** Schematic diagram of CNN-based damage identification and classification for a brick unit
 
<br />
 
<img width="450" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig3.png>

**Fig. 3:** Comparison of fully connected mode and locally connected mode: (a) fully connected mode, and (b) locally connected mode
 
<br /> 
 
<img width="350" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig4a.png>  <img width="350" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig4b.png>  <img width="350" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig4c.png>  <img width="350" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig4d.png>

**Fig. 4:** Training samples of the 4 categories: (a) intact, (b) spall, (c) crack, and (d) efflorescence for CNN

<br /> 

<img width="250" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig5.png>

**Fig. 5:** Training sample for Faster-RCNN

<br /> 

<img width="600" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig6a.png>  <img width="600" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig6b.png>

**Fig. 6:** Results of training using AlexNet-8: (a) train loss, and (b) validation accuracy

<br /> 

<img width="600" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig7a.png>  <img width="600" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig7b.png>

**Fig. 7:** Results of training using GoogLeNet-22: (a) train loss, and (b) validation accuracy

<br /> 

<img width="500" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig8.png>

**Fig. 8:** Sliding window strategy

<br /> 

<img width=“500” src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig9.png>

**Fig. 9:** Test results based on GoogLeNet-22 together with sliding window algorithm

<br /> 

<img height="300" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig10a.png>  <img height="300" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig10b.png>  <img height="300" src=https://github.com/QinganZhao/Deep-Learning-based-Structural-Damage-Detection/blob/master/markdown_figures/fig10c.png>

**Fig. 10:** Test results based on Faster-RCNN

<br /> 

<div align=left>


For more details see [this](https://onlinelibrary.wiley.com/doi/abs/10.1111/mice.12411) (Faster-RCNN part is not included).

### Please cite the following article in your publications if it helps your research
```
@article{
  title={Damage Classification for Masonry Historic Structures Using Convolutional Neural Networks Based on Still Images},
  author={Wang, Niannian and Zhao, Qingan and Li, Shengyuan and Zhao, Xuefeng and Zhao, Peng},
  journal={Computer-Aided Civil and Infrastructure Engineering},
  publisher={Wiley Online Library}
}
```