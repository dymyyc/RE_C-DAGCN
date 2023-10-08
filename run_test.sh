#!/bin/bash

#SemEval
python re_cdagcn_main.py --do_test --task_name semeval --data_dir ./data/semeval/ --model_path ./RE_CDAGCN.SEMEVAL.BERT.L/ --do_lower_case

#ACE2005EN
python re_cdagcn_main.py --do_test --task_name ace05en --data_dir ./data/ace05en/ --model_path ./RE_CDAGCN.ACE05EN.BERT.L/ --do_lower_case