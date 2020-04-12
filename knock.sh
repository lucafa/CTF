root@kali-2019:~/htb/nineveh# cat knock.sh 
!/bin/bash
echo "TocToc port 571"
hping3 -c 1 -S -p 571 10.10.10.43
sleep 1
echo "TocToc port 290"
hping3 -c 1 -S -p 290 10.10.10.43
sleep 1
echo "TocToc port 911"
hping3 -c 1 -S -p 911 10.10.10.43


#571, 290, 911
