# Wine no Ubuntu 22.04

1. Adicionando arquitetura i386 ( 32 bit ), de o comando abaixo no terminal.

```sudo dpkg --add-architecture i386```

2. Atualize o apt com o comando abaixo.

```sudo apt update ```

3. Instale o wine com o comando abaixo.

```sudo apt install wine wine32 winetricks```

4. Abra as configurações do Wine para gerar os arquivos iniciais, só altere algo se souber o que está fazendo.

```winecfg```

5. Instale o Directx.

```winetricks d3dx9 ; wine ~/.cache/winetricks/directx9/directx_Jun2010_redist.exe```

6. Instale os complementos directmusic e directplay.

```winetricks directmusic directplay```

7. Para instalar as fonts Microsoft de os comandos abaixo.

```winetricks corefonts```

8. O compactador e descompactador 7zip é usado por vários instaladores de programas, instale ele para evitar problemas com programas que necessitem dele.

```winetricks 7zip```

9. Para instalar uma ótima coleção de codecs e outros componentes Windows de o comando abaixo no terminal.

```winetricks allcodecs```

10. Crie o arquivo para que os APP .exe sejam executados pelo Wine.

```sudo vim ~/.local/share/applications/wine.desktop```

11. Insira essas informações ao arquivo:

```
[Desktop Entry]
Name=Wine
Exec=wine
Type=Application
StartupNotify=true
Icon=winetricks
```

12. Crie a entrada para reconhecer os .exe.

```echo "application/x-ms-dos-executable=wine.desktop;" >> ~/.config/mimeapps.list```

FONTES:
https://linuxdicasesuporte.blogspot.com/2022/06/instalar-wine-no-ubuntu-2204.html