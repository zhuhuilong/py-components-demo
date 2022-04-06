# 云端算盘组件镜像制作及组件发布

## 容器镜像制作

### 新建模板项目
    * 从 <https://itools.weichai.com/git/weitools/digitalization/sourcecode/suanpan-sdk-docker/py-components-demo.git> 克隆代码
    * 将组件代码放到 components 文件夹下
    * 将所需依赖写入 requirements.txt 中

### 编辑修改 Dockerfile

按照项目需求修改 `docker/Dockerfile` 文件，增加需要安装的库或修改 pipy 镜像地址。

### 执行构建镜像命令

1. 登录镜像仓库
    
    首先 login 镜像仓库，以 `itools-harbor.weichai.com` 为例，执行命令

    ```bash
    docker login itools-harbor.weichai.com -u [username] -p [password]
    ```

2. 构建镜像命令

    ```bash
    docker build -f docker/Dockerfile -t itools-harbor.weichai.com/common/component-demo:0.0.1 .
    ```

3. 上传镜像命令

    ```bash
    docker push itools-harbor.weichai.com/common/component-demo:0.0.1
    ```

4. 命令脚本

    修改 `build.sh` 中镜像名称，镜像 tag，镜像仓库地址，然后执行

    ```bash
    ./build.sh
    ```

## 新建算盘组件

1. 新建服务组件

2. 键入镜像地址
    ```bash
    component-demo:0.0.1
    ```

3. 键入启动命令
    ```bash
    python run.py components.hello_world.app
    ```

4. 编辑组件输入输出和参数
