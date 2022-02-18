# ClustalW
# Date: 2022
1. Go to ClustalW download website: http://www.clustal.org/clustal2/#Download
2. Download "clustalw-2.1-macosx.dmg" for Mac 
3. Open Downloads and run .dmg file
4. Move "clustalw-2.1-macosx" folder under "/Users/fer/Desktop/botany563/softwares/"
5. Open terminal and go under clustalw folder
    cd Desktop/botany563/softwares/clustalw-2.1-macosx
6. Run ClustalW 
    ``` shell
    $ ./clustalw2 -ALIGN
    zsh: bad CPU type in executable: ./clustalw2
    ```
7. It gives error about executable probably due to Mac Version (Current Mac Version - 2022-02-16 : MacOS Monterey 12.1)
8. Go to ClustalW download website again : http://www.clustal.org/clustal2/#Download  and download "clustalw-2.1.tar.gz"
9. Copy "clustalw-2.1.tar.gz" file under  "/Users/fer/Desktop/botany563/softwares/"
10.Untar tar.gz
    ``` shell
    $ tar -xvzf clustalw-2.1.tar.gz
    ```
11. Configure
    ```shell
    $ ./configure CXX=icpc
    $ ./configure
    $make
    2 warnings and 2 errors generated.
    make[3]: *** [VectorOutOfRange.o] Error 1
    make[2]: *** [all-recursive] Error 1
    make[1]: *** [all] Error 2
    make: *** [all-recursive] Error 1
    ```
12. Probably 'make' also does not work for the current Mac system (Current Mac Version - 2022-02-16 : MacOS Monterey 12.1)