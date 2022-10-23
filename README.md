# WCC
Wireless communication calculator. Major Assignment of Principles of Communication. Tianjin University.

# 规范

## Git规范
### 不得push编译相关文件
### 功能修改/更新
先pull主分支，再merge新分支，更改都在自己开的分支中进行，主分支仅用于merge操作，确认不需要修改后及时删除开的分支。
### commit - m
格式为[%type] - %msg
type： 本次操作类别
- New 新增
- Del 删除
- Fix 修正
- Mix 多种操作
msg：附加的说明信息，务必是能让其他人看懂

# 编解码
采用 Matlab 提供的 enCode 和 deCode 函数

# 载波传输
目前支持 2FSK、2DPSK

2FSK采用非相干解调、2DPSK采用差分相干解调

详见 modulationMsg 和 demodulationMsg 函数

载波采用频率为1000Hz和500Hz的正弦波
