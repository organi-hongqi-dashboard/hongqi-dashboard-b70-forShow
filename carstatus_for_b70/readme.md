　如需建立新的项目

 下面以新建"HuaGuan"项目为例：

1.在recv.pro文件中,按如下模板添加对应Module,并注释不需要的Module
```cpp
# Add HuaGuan Custom Module
 CONFIG += HuaGuan_Spe_Protocol
 HuaGuan_Spe_Protocol {
 DEFINES += HuaGuan
 HEADERS += \
         ../src/huaguan_protocol.h \
         ../src/huaguan_carstatus.h
     SOURCES += ../src/huaguan_carstatus.cpp
     OTHER_FILES += HuaGuanSpecialInfo.qml
 }
```

2.在tran.pro文件中,按如下模板添加对应Module,并注释不需要的Module
```cpp
 # Add HuaGuan Custom Module
 CONFIG += HuaGuan_Spe_Protocol
 HuaGuan_Spe_Protocol {
 DEFINES += HuaGuan
     HEADERS += \
         ../src/huaguan_protocol.h \
         ../src/huaguan_tran.h
     SOURCES += ../src/huaguan_tran.cpp
     OTHER_FILES += HuaGuanSpecialInfo.qml
}
```

3.在src文件夹内新建以５个下文件
    huaguan_protocol.h huaguan_carstatus.h huaguan_tran.h huaguan_tran.cpp huaguan_carstatus.cpp

4.在tran,recv文件夹中分别新建 HuaGuanSpecialInfo.qml 根据通信协议填写专用帧部分

5.在recv文件夹下的main.cpp找到如下代码进行修改,将#elif解注释或者添加新的;

(1)
```cpp
#ifdef Todi
 #include < todi_carstatus.h >
 #elif HuaGuan
 #include < huaguan_carstatus.h >
 #else
 #include < carstatus.h >
 #endif
```

(2)
```cpp
 #ifdef Todi
     TodiCarStatus carStatus(serial);
 #elif HuaGuan
     HuaGuanCarStatus carStatus(serial);
 #else
     CarStatus carStatus(serial);
 #endif
```

6.在tran文件夹下的main.cpp找到如下代码进行修改,将#elif解注释或者添加新的;

(1)
```cpp
 #ifdef Todi
 #include <todi_tran.h>
 #elif HuaGuan
 #include <huaguan_tran.h>
 #else
 #include <tran.h>
 #endif
```

(2)
```cpp
 #ifdef Todi
     TodiSerialTran serialTran(serial);
 #elif HuaGuan
     HuaGuanSerialTran serialTran(serial);
 #else
     SerialTran serialTran(serial);
 #endif
```

7.在carstatus.h和tran.h文件中分别找到如下代码,将#elif解注释或者添加新的,并添加对应的#include <huaguan_protocol.h>
```cpp
 #ifdef Todi
 #include <todi_protocol.h>
 #elif HuaGuan
 #include <huaguan_protocol.h>
 #endif
```

8.在tran.cpp和carstatus.cpp找到如下代码,将#elif解注释或者添加新的,并添加对应的m_projectName = "HuaGuan";
```cpp
 #ifdef Todi
     m_projectName = "Todi";
 #elif HuaGuan
     m_projectName = "HuaGuan";
 #endif
```

注：对于串口通信协议及本工程,不经允许不得随便修改通用部分,只需修改对应项目的专用部分即可。
