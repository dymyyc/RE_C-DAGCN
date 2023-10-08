#!/bin/bash

python preprocess_dependency.py --data_path ./sample_data/
python preprocess_dependency.py --data_path ./semeval/
python preprocess_dependency.py --data_path ./ace05en/