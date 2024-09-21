# mulitips inside Directory create command 
mkdir -p gullu/tarun/{suman,gujjar,adhana/{haryana,faridabad,tigaon/{lehandola,mndh}}}

# scp secure copy paste
                                             -> scp copy.yml project.yml root@192.168.187.135:/root
scp -r  recursivly using when send folder    -> scp -r joker pool root@192.168.187.137:/root

scp -i  identity                             -> scp -i /root/.ssh/id_rsa /root/copy.yml root@192.168.187.137:/root
                                             -> scp-r -i /root/.ssh/id_rsa /root/joker root@192.168.187.137:/root
scp -P  port default port is 22         ->  scp -P 22 snap root@192.168.187.137:/root/
scp -o option 

# key generate 
ssh-keygen
ssh-copy-id root@192.168.187.135

# loop shell command or playbook 
"{{ range(1, 51) | map('regex_replace', '(.+)', 'user\\1') | list }}"   -> create 1to51 create any this but create in arrays ways [user1, user2, user3 user4]

# running process list
ps aux
pstree 
ps -f -u syslog

              # encode and deecode
     # encode
root@Ubuntu1111:~# echo ruby | base64
cnVieQo=
      # decode
root@Ubuntu1111:~# echo cnVieQo= | base64 --decode
ruby

# head : genrally using for configuration file
head ruby.txt 
# tail : using for check logs
tail ruby.txt

# networking tcp record all this network all 
tcpdump
root@Ubuntu1111:~# tcpdump
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on ens33, link-type EN10MB (Ethernet), snapshot length 262144 bytes
root@Ubuntu1111:~# tcpdump -c 10   <---- show only 10 
root@Ubuntu1111:~# tcpdump -c 10 -w ruby.txt      <----save 10 packet in file
root@Ubuntu1111:~# tcpdump -c 10 > ruby.txt       <---- save in file
root@Ubuntu1111:~# tcpdump -c 10 >> ruby.txt      <----append

# journalctl  show all system logs  
/etc/systmd/
cd /etc/systmd/
cat journald.conf
journalctl
journalctl --no-pager
journalctl --no-pager > file.txt
journalctl --since yesterday 
journalctl --since yesterday -o json-pretty      <---all logs human readable

