# Windows 11 sem TPM2.0

<a id="topo"></a>
Fórmula que pormete instalar o Windows 11 em computadores que não tem as recomendações de hardware para isso.


1) Aperte `Shift` + `F10`.

2) Digite `regedit`.

3) Vá até `HKEY_LOCAL_MACHINE` \ `SYSTEM` \ `Setup`.

4) Na pasta Setup, clique com o botão direito e siga o caminho:

`Novo` » `Chave`

5) Insira o nome `"LabConfig"` e clique em OK.

6) Localize a pasta que acabou de criar no painel direito. Nela clique com o botão direito e crie;

`Novo` » `Valor DWORD (32 bits)`

7) Crie os seguintes valores:

`BypassTPMCheck`, `BypassRAMCheck` e `BypassSecureBootCheck`

8) Dê um duplo clique em `BypassTPMCheck`. No campo "Dados do valor", insira o número `1` e clique em OK.

9) Repita o processo para `BypassRAMCheck` e `BypassSecureBootCheck` – todos devem ter o valor `1`;



---
[volta ao menu](#menu)
