> [!IMPORTANT]
>
> This project is merely a Docker packaging of a server created by others. The server and client modpack's author is the PixelmonMod team. Detailed information is specified in the `3 Reference` section below. Please respect the original author's copyright.
>
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
>
> 此项目仅为对他人制作的服务器的 Docker 打包。此服务器和客户端模组包的作者是 PixelmonMod 团队。详细信息在下方的 `3 Reference` 中注明了，请尊重原作者版权。
>
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<div align="center">
	<img src="https://github.com/OPDMC/1.16.5-OPDModPixelmon/raw/main/docs/%23README/icon.png" width="20%"/>
    <h1>1.16.5-OPDModPixelmon <code>v1.0</code></h1>
	<a href='https://github.com/OPDMC/1.16.5-OPDModPixelmon'><img src="https://img.shields.io/badge/-GitHub-3A3A3A?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="GitHub"></a>
	<a href='https://github.com/OPDMC/1.16.5-OPDModPixelmon/pkgs/container/1.16.5-opdmodpixelmon'><img src="https://img.shields.io/badge/Ghcr.io-v1.0-555555?labelColor=8957E5&style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>
	<a href='https://hub.docker.com/r/opdmc/1.16.5-opdmodpixelmon'><img src="https://img.shields.io/badge/DockerHub-v1.0-555555?labelColor=1c90ed&style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a>

![Docker Image Size](https://img.shields.io/docker/image-size/opdmc/1.16.5-opdmodpixelmon?arch=amd64&label=AMD64&color=006688) ![Docker Image Size](https://img.shields.io/docker/image-size/opdmc/1.16.5-opdmodpixelmon?arch=arm64&label=ARM64&color=008866)
    </tr>
</div>


## 1 Description

这是OPDMC群友自用的Docker化MC服务器。其目的是为了便于部署。整合的插件/模组作者在下方的 `3 Reference` 中注明了，请尊重原作者版权。

This is a Dockerized Minecraft server for personal use by OPDMC group members, its purpose is to facilitate deployment. The authors of the integrated plugins/mods are credited in the `3 Reference` section below. Please respect the original authors' copyrights.

### 1.1 Update Rule

版本号用 `vA.B` 表示 (eg: `v1.0`, `v1.1`, `v2.0`)，其中 `A` 的改变表示用 `-v /path/to/store/data:/minecraft` 挂载的持久性文件中需要手动做出一些改变。而 `B` 表示小版本更新，理论上 `v1.0` 可以直接升级到 `v1.1` 因为它们的大版本是相同的。

Version numbers are represented as `vA.B` (eg: `v1.0`, `v1.1`, `v2.0`), where changes to `A` indicate that some manual modifications are required in the persistent files mounted with `-v /path/to/store/data:/minecraft`. On the other hand, `B` represents minor version updates; theoretically, `v1.0` can be directly upgraded to `v1.1` because they share the same major version.

## 2 Usage

```shell
# DockerHub
docker pull opdmc/1.16.5-opdmodpixelmon:latest
# Ghcr.io
docker pull ghcr.io/opdmc/1.16.5-opdmodpixelmon:latest
```

```shell
docker run -d \
  --name=1.16.5-opdmodpixelmon \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.16.5-opdmodpixelmon
```

| Parameter                           | Function                                                               |                                         |
|-------------------------------------|------------------------------------------------------------------------|-----------------------------------------|
| `-p 127.0.0.1:80:25565/tcp`         | Minecraft server port                                                  | MC服务器端口                                 |
| `-v /path/to/store/data:/minecraft` | To store data in local, auto initialize if `docker-start.sh` NOT exist | 服务器文件映射路径, `docker-start.sh` 不存在时将进行初始化 |

## 3 Reference

- ***Pixelmon Modpack***
  - **Official Website**
    - https://reforged.gg/
    - https://pixelmonmod.com/
  - **Modpack Source**
    - https://www.curseforge.com/minecraft/modpacks/the-pixelmon-modpack

- ***All Mods***
  - **Pixelmon (PMRE)**
    - https://pixelmonmod.com/wiki/Main_Page
    - https://reforged.gg/
    - https://www.curseforge.com/minecraft/mc-mods/pixelmon
  - **Forge**
    - https://files.minecraftforge.net/net/minecraftforge/forge/
  - **Apple Skin**
    - https://github.com/squeek502/AppleSkin
    - https://www.curseforge.com/minecraft/mc-mods/appleskin
  - **Biomes O' Plenty (BOP)**
    - https://github.com/Glitchfiend/BiomesOPlenty
    - https://www.curseforge.com/minecraft/mc-mods/biomes-o-plenty
  - **Explorer's Compass**
    - https://github.com/MattCzyr/ExplorersCompass
    - https://www.curseforge.com/minecraft/mc-mods/explorers-compass
  - **Fancy Menu & Konkrete**
    - https://github.com/Keksuccino/FancyMenu
    - https://www.curseforge.com/minecraft/mc-mods/fancymenu
    - https://github.com/Keksuccino/Konkrete
    - https://www.curseforge.com/minecraft/mc-mods/konkrete
  - **Oh The Biomes You'll Go (BYG)**
    - https://github.com/Potion-Studios/BYG
    - https://biomesyougo.weebly.com/
    - https://www.curseforge.com/minecraft/mc-mods/oh-the-biomes-youll-go
  - **Inventory Profiles Next (IPN) & libIPN & Kotlin For Forge**
    - https://github.com/blackd/Inventory-Profiles
    - https://www.curseforge.com/minecraft/mc-mods/inventory-profiles-next
    - https://github.com/blackd/libIPN
    - https://www.curseforge.com/minecraft/mc-mods/libipn
    - https://github.com/thedarkcolour/KotlinForForge
    - https://www.curseforge.com/minecraft/mc-mods/kotlin-for-forge
  - **Jade**
    - https://github.com/Snownee/Jade
    - https://www.curseforge.com/minecraft/mc-mods/jade
  - **Just Enough Items (JEI)**
    - https://github.com/mezz/JustEnoughItems
    - https://www.curseforge.com/minecraft/mc-mods/jei
  - **Journey Map**
    - https://teamjm.github.io/journeymap-docs/latest/
    - https://www.curseforge.com/minecraft/mc-mods/journeymap
  - **Nature's Compass**
    - https://github.com/MattCzyr/NaturesCompass
    - https://www.curseforge.com/minecraft/mc-mods/natures-compass

## 4 License

By using this project, you agree to the Minecraft End User License Agreement (EULA). The EULA can be found at the following link: [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula).  This project automatically sets the EULA to true in the Minecraft configuration. By continuing to use this project, you acknowledge that you have read, understood, and agreed to the terms of the Minecraft EULA.

使用本项目即表示您同意《Minecraft 最终用户许可协议》（EULA）。EULA 可通过以下链接查看：[Minecraft EULA](https://account.mojang.com/documents/minecraft_eula)。 本项目会自动在 Minecraft 配置中将 EULA 设置为 true。继续使用本项目即表示您已阅读、理解并同意 Minecraft EULA 的条款。

Apache License 2.0
