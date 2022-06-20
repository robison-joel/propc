# SERVIDOR

<a id="topo"></a>

<pre>
  ___            _         ____
 / _ \__  ____ _| | __ _  / ___|  ___ _ ____   _____ _ __
| | | \ \/ / _` | |/ _` | \___ \ / _ \ '__\ \ / / _ \ '__|
| |_| |>  < (_| | | (_| |  ___) |  __/ |   \ V /  __/ |
 \___//_/\_\__,_|_|\__,_| |____/ \___|_|    \_/ \___|_|

=========================================================
</pre>
| TITULO..: Dados para instala&ccedil;&atilde;o do meu servidor de casa
| DATA....: 16/06/2022 - 22:30hs
| AUTOR...: Robison Joel - <http://robison-joel.github.io>

---

N | Item
--|-----------------------------------------
1 | [Nome](#nome)
2 | [IP](#ip)
3 | [Tabela de usu&aacute;rios](#usuarios)
4 | [Servi&ccedil;os](#servicos)
5 | [Instala&ccedil;&atilde;o do S.O.](#essio)
6 | [Armazenamento](#armazenamento)
7 | [Configura&ccedil;&atilde;o de IP fixo](#ipfixo)
8 | [Ambiente gr&aacute;fico](#gui)
9 | [Informa&ccedil;&otilde;es de hardware](#hardware)

---

<a id="nome"></a>

### 1. Nome

Oxal&aacute;

---
[voltar ao topo](#topo)

<a id="ip"></a>

### 2. IP

192.168.100.200

---
[voltar ao topo](#topo)

<a id="usuarios"></a>

### 3. Tabela de usu&aacute;rios

Usu&aacute;rio | Senha
:-------------:|:--------:
root           | 824655
robisonjoel    | 8246
ferreira       | nega
geral          | null

---

[voltar ao topo](#topo)

<a id="servicos"></a>

#### 4. Servi&ccedil;os

Tabela dos Servi&ccedil;os

Servi&ccedil;o | Aplica&ccedil;&atilde;o
:--------------|:-----------------------
DNS            | Dnsmasq ou Bind9
SSH            | OpenSSH
HTTP           | Apache2
ARQUIVOS       | Samba Share
IMPRESSORA     | CUP's
MEDIA          | MiniDLNA
PXE            | PXELinux

---

[voltar ao topo](#topo)

<a id="essio"></a>

### 5. Instala&ccedil;&atilde;o do S.O

A instala&ccedil;&atilde;o se d&aacute; atrav&eacute;s de uma imagem do Ubuntu 20.04, baixada do site oficial, em sua [p&aacute;gina de releases](https://releases.ubuntu.com/20.04/). Ap&oacute;s baixar a imagem ISO, gravar em um pendrive boot&aacute;vel

---

[voltar ao topo](#topo)

<a id="armazenamento"></a>

### 6. Armazenamento

Particionar o disco segundo a tabela abaixo:

Local | Ponto de montagem            | Capacidade
:-----|:-----------------------------|:---------:
/     | Parti&ccedil;&atilde;o raiz  | 200Gb
/var  | Parti&ccedil;&atilde;o       | 10Gb
/home | Parti&ccedil;&atilde;o home  | 100 Gb

---

[voltar ao topo](#topo)

<a id="ipfixo"></a>

### 7. Configura&ccedil;&atilde;o de IP fixo

Edite o arquivo com extensão ".yaml", existente na pasta `/etc/netplan/`.

> N&atilde;o se esque&ccedil;a de fazer tudo como usuario root.

`cd /etc/netplan/`

`sudo vim *.yaml`

Insira neste arquivo uma configuração similar a esta:

<pre>

---------------- INICIO DO CODIGO --------------------

network:

    version: 2

    renderer: networkd

    ethernets:

        enp2s0:

            dhcp4: false

            dhcp6: false

            addresses: [192.168.100.200/24]

            gateway4: 192.168.100.1

            nameservers:

                addresses: [192.168.100.1, 8.8.8.8]

---------------- FIM DO CODIGO --------------------

</pre>

---

[voltar ao topo](#topo)

<a id="gui"></a>

### 8. Ambiente gr&aacute;fico

Instala&ccedil;&atilde;o do ambiente gr&aacute;fico. Recomendamos a o xface4 ou Xubuntu Desktop.

`sudo apt install xface4`

---

[voltar ao topo](#topo)

<a id="hardware"></a>

### 9. Informa&ccedil;&otilde;es de hardware

* GABINETE: Positivo POS-EIH61CE
* Socket: LGA1155
* CHIPSET: Chipset Intel® H61 Express
* RAM: 2 Gb - Arquitetura de mem&oacute;ria DDR3 240-pinos 1333/1066 e suporte de at&eacute; 16 GB
* ARMAZENAMENTO: Tr&ecirc;s HD's, sendo 01 com 500 Gb e 2 com 2 Tb.
* &Aacute;UDIO: Codec de audio 6-canais VIA® VT1705. Concordante com especifica&ccedil;&atilde;o de HD.
* REDE: Controlador Atheros AR8152-B 10/100 Fast Ethernet (Co-lay AR8151-B Rede Gigabit)
* BIOS: AMI BIOS com 32MB SPI ROM Audio, LAN, can be disabled in BIOS Suporte para Plug and Play, STR (S3) / STD (S4) com monitoramento do Hardware e Multi Boot.

Conectores internos:

* 1 x Conector de Energia ATX de 24 pinos;
* 1 x 4-pin 12V Connector;
* 1 x Conectores CPU_FAN de 4 pinos;
* 1 x Conectores SYS_FAN de 3 pinos;
* 1 x Conector para alto-falante;
* 1 x Conector de saída SPDIF;
* 1 x Conector clear CMOS;
* 1 x Conector serial (COM2);
* 4 x Conectores SATA 3Gb/s;
* 2 x Conectores USB 2.0 suportam 4 portas USB adicionais;
* 1 x conector TPM;
* 1 x Conector case open;
* 1 x Conector de &aacute;udio de painel frontal;
* 1 x Botão de painel frontal/conector LED.

Conectores de painel traseiro:

* 1 x Conector de teclado PS/2 e mouse PS/2;
* 1 x Conector D-sub(VGA);
* 1 x saída HDMI (Opcional);
* 1 x Conector de rede RJ45;
* 1 x Conjunto de conectores de &aacute;udio (Line-in, Line-out, Mic-in);
* 4 x Portas USB 2.0.

---

[voltar ao topo](#topo)
