```python
# 指定设备 
import os 
os.environ["CUDA_VISIBLE_DEVICES"] = "0, 2" 
# 会将实际上0, 2显卡设定为可见：即在该脚本中0 -> 0, 2 -> 1
```