echo off
cls REM - Limpando a tela 

REM - Desenvolvido por Walderlan Sena
color 1F
TITLE SYSBACKWIN - Script de Backup Windows - Walderlan Sena
echo #-----------------------------------------------#
echo #                SYSBACKWIN             v-0.0.1 #
echo #-----------------------------------------------#
echo #         Script de Backup Windows              #
echo #                   Site                        #
echo #     https://www.mentesvirtuaissena.com        #
echo #                                               #
echo #                            by: Walderlan Sena #
echo #-----------------------------------------------#
echo -

echo -------------------------------------
echo # Ex: C:\Users\Walderlan\Documentos #
echo -------------------------------------

REM - Capturando a Origem dos arquivos para serem copiados
set /p ORIGEM="DIGITE A ORIGEM DOS ARQUIVOS: "

echo .

echo ------------------------------------
echo # Ex: F:\Walderlan\Backup          #
echo ------------------------------------

REM - Capturando o Distino para salvar os arquivos copiados
set /p DESTINO="DIGITE O DESTINO PARA SALVAS OS ARQUIVOS: "

echo .

REM - Copiando Arquivos
echo ##################################################
echo #              COPIANDO ARQUIVOS                 #
echo ##################################################
echo .
REM - Copiando os aquivos referentes as variaveis setadas
xcopy %ORIGEM% %DESTINO% /E /Y /C /H

REM /E - Copia diretórios e subdiretórios, inclusive os vazios.
REM /Y - Suprime o prompt para você confirmar se deseja substituir um arquivo de destino existente.
REM /C - Continua copiando, mesmo que ocorram erros.
REM /H - Copia arquivos ocultos e do sistema também.

echo .

START %DESTINO% 

cls
echo ###########################################
echo #    :) Arquivos copiados com sucesso     #
echo #-----------------------------------------#
echo # Arquivos salvos em: "%ds%%PASTA%"         
echo #                       by: Walderlan Sena#
echo ###########################################

pause REM - Pausa o terminal ate o usuario teclar qualquer tecla