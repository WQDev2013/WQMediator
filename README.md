# WQMediator
一、背景

项目开发中经常遇到一个界面跳转到其他模块界面场景，或者相互跳转，项目越来越大，代码耦合也越来越多，项目的耦合度不断增加。业务解耦尤为重要，本文主要讲解Target-Action方案的实现过程。

二、原理及实现

使用OC的runtime运行时去查找类、方法的特性，具体调用流程如图，主界面使用分类分别跳转文件、视频模块，一个模块对应一个分类，图中FileModule、VideoMeeting分别是文件、视频模块的一个分类，主要是用来区分不同业务、为Mediator瘦身。这也是performTarget:action:params调了两次的原因。performTarget:action:params通过runtime找到对应的类（Target）以及方法（Action）后，具体创建对应的控制器。

