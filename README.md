# github-auto-ops

### GitHub自动认证

HTTPS方式，使用BASIC认证，修改git配置`remote.origin.url`，在url中加入认证信息即可。例子:
```
# 原URL
https://github.com/lowzj/github-auto-ops
# 加入BASIC认证信息的URL：
https://{username}:{password}@github.com/lowzj/github-auto-ops
```
其中`password`可以用`access_token`来代替，以避免泄漏密码。创建`access_token`见[这里](https://github.com/settings/tokens)。

> 提供一个简单的例子 `github-ops.sh`，参数可以直接跟git命令，每个命令用引号括起来。
```sh
sh github-ops.sh 'git status' "git commit -am 'update'"
```
