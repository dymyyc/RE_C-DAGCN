A Contextual Dependency-Aware Graph Convolutional Network for Extracting Entity Relations
==========

This code is the implementation of [A Contextual Dependency-Aware Graph Convolutional Network for Extracting Entity Relations]. 

The overall architecture of the model is as follows:

![CDAGCN Architecture](figure/Arch.jpg "CDAGCN Architecture")

## Requirements

* `python>=3.7`
* `pytorch>=1.3`

## Preparation

Download the dataset from official website and do the pre-processing in the format of `data/sample_data`.

We release the pre-processed data of SemEval2010-Task8. We are not able to release the data of ACE2005 because of copyright issues.

`StanfordCoreNLP` is required to obtain the dependency trees for all dataset. Please download version [3.9.2](https://stanfordnlp.github.io/CoreNLP/history.html) and put the folder `stanford-corenlp-full-2018-10-05` under the `data` directory.

Follow the script `data/data_processes.sh` to obtain the dependency trees for dataset.

In our paper, we use BERT ([paper](https://www.aclweb.org/anthology/N19-1423/)) as the encoder. For BERT, please download pre-trained BERT-Base and BERT-Large English from [Google](https://github.com/google-research/bert) or from [HuggingFace](https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-chinese.tar.gz). If you download it from Google, you need to convert the model from TensorFlow version to PyTorch version.

## Run on Sample Data

Run `run_sample.sh` to train a model on the small sample data under the `data/sample_data` directory.

## Training and Testing

You can find the command lines to train and test models in `run_train.sh` and `run_test.sh`, respectively.

Here are some important parameters:

* `--do_train`: train the model.
* `--do_eval`: test the model.
