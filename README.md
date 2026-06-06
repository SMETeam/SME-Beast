<table align="center">
  <tr>
    <td align="center"><a href="https://github.com/HomoMC"><img src="logo.jpg" width="180" height="180" alt="HomoMC" style="border-radius:50%; object-fit:cover;"></a><br><b>HomoMC</b></td>
    <td align="center"><a href="https://github.com/SMETeam"><img src="https://sme-mc.us/img/logo.png" width="180" height="180" alt="Snubby / SMETeam" style="border-radius:50%; object-fit:cover;"></a><br><b>Snubby / SMETeam</b></td>
  </tr>
</table>

# SME Beast [![Dev Build](https://github.com/SMETeam/SME-Beast/actions/workflows/dev-build.yml/badge.svg)](https://github.com/SMETeam/SME-Beast/actions/workflows/dev-build.yml)

A Paper 1.12.2 fork of a OTHER Paper fork aims to provide extreme performance, bug fixes, improvements, and better anti-xray.

*This project is based on Beast 1.12.2*

## Features

- **SME Beast is a fork of [Paper-1.12.2](https://github.com/PaperMC/Paper)** designed for performance, new fun and exciting gameplay features.
- **Contains [Lithium](https://github.com/CaffeineMC/lithium-fabric) patches** that optimizing many areas in game.
- **Bug fixes** for several Minecraft issues.
- **Backports** bug fixes of Mojang.
- **Plugin compatibility** with Spigot & Paper plugins.
- **Completely** removed Timings to save your server performance.
- **Various optimizations** for vanilla methods.
- **Brings back** some vanilla features.
- **More events make your server more fun**.
- **Support Virtual Threads which is introduced in Java 21**
- Pause server when no players online (configurable)
- Configurable 1.8 old combat method
- **Dynamic View Distance (with permissions)**
- **Raytracing Anti-Xray**
- Ported New item names

### Permissions
```
reaper.dynvd_<distance>
reaper.unlimitvd
```

### Java >= 8 is required, Java >= 21 is recommended.

## How To (Server Admins)

Beast uses the same paperclip jar system that Paper uses.

You can download the latest release of Beast by going [here](https://github.com/SMETeam/SME-Beast/Releases) but I highly recommend to use the latest [dev build](https://nightly.link/SMETeam/SME-Beast/workflows/dev-build/ver%2F1.12.2/Beast-JDK8.zip).

## How To (Plugin Developers)

Maven repository:
```xml
<repository>
    <id>github-homomc-beast</id>
    <name>GitHub Apache Maven Packages</name>
    <url>https://maven.pkg.github.com/HomoMC/Beast</url>
</repository>
```

Beast-API maven dependency:
```xml
<dependency>
    <groupId>com.homomc.beast</groupId>
    <artifactId>beast-api</artifactId>
    <version>1.12.2-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
```

Beast-Server maven dependency:
```xml
<dependency>
    <groupId>com.homomc.beast</groupId>
    <artifactId>beast</artifactId>
    <version>1.12.2-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
```

### Great thanks to these projects:

- Beast
- Reaper
- Leaf
- Polpot
- Randar Explanation
