![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.16.5-opdmodpixelmon/v1.0?arch=amd64&label=AMD64%20v1.0&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.16.5-opdmodpixelmon/v1.0?arch=arm64&label=ARM64%20v1.0&color=008866)

---

# [1.16.5-OPDModPixelmon v1.0](https://github.com/OPDMC/1.16.5-OPDModPixelmon/releases/tag/v1.0)

> [!IMPORTANT]
>
> This project is merely a Docker packaging of a server created by others. The server and client modpack's author is the PixelmonMod team. Please respect the original author's copyright.
>
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
>
> 此项目仅为对他人制作的服务器的 Docker 打包。此服务器和客户端模组包的作者是 PixelmonMod 团队。请尊重原作者版权。

<a href='https://hub.docker.com/r/opdmc/1.16.5-opdmodpixelmon'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://github.com/OPDMC/1.16.5-OPDModPixelmon/pkgs/container/1.16.5-opdmodpixelmon'><img src="https://img.shields.io/badge/-Ghcr.io-8957E5?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.16.5-opdmodpixelmon/v1.0?arch=amd64&label=AMD64%20v1.0&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.16.5-opdmodpixelmon/v1.0?arch=arm64&label=ARM64%20v1.0&color=008866)

### Usage

```shell
# DockerHub
docker pull opdmc/1.16.5-opdmodpixelmon:v1.0
# Ghcr.io
docker pull ghcr.io/opdmc/1.16.5-opdmodpixelmon:v1.0
```

```shell
docker run -d \
  --name=1.16.5-opdmodpixelmon \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.16.5-opdmodpixelmon
```

### Changelog

**Full Changelog**: https://github.com/OPDMC/1.16.5-OPDModPixelmon/commits/v1.0