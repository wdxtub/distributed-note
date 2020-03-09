# 分布式对象存储 - 原理、架构及 Go 语言实现

[参考代码地址](https://github.com/stuarthu/go-implement-your-object-storage)

后续章节采用 nsq 作为消息队列进行代码编写，测试环境与原代码也有不同，方便进行单机测试

## 对象存储的优势

+ 提升了存储系统的扩展性
+ 以更低的代价提供了数据冗余能力