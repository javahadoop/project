5566  2018-01-22 11:35:30 root nmap -O 192.168.0.200
 5567  2018-01-23 17:11:01 root ifconfig -a
 5568  2018-01-24 13:41:13 root docker ps
 5569  2018-01-24 13:41:17 root docker ps|grep dns
 5570  2018-01-24 11:38:31 root cd /data/
 5571  2018-01-24 11:38:32 root ll
 5572  2018-01-24 11:38:36 root cd nginx/
 5573  2018-01-24 11:38:36 root ll
 5574  2018-01-24 11:38:40 root cd html/lucene/
 5575  2018-01-24 11:38:42 root ll
 5576  2018-01-24 11:58:18 root vim /data/nginx/logs/skoda_mall_files.conf 
 5577  2018-01-24 11:58:52 root vim /data/nginx/logs/skoda_mall_e.conf 
 5578  2018-01-24 11:59:11 root vim /data/nginx/logs/skoda_mall_files.conf 
 5579  2018-01-24 12:00:01 root ll
 5580  2018-01-24 12:01:35 root vim /data/nginx/logs/skoda_mall_operation.conf 
 5581  2018-01-24 12:01:57 root vim /data/nginx/logs/skoda_mall_files.conf 
 5582  2018-01-24 14:12:17 root vim /data/nginx/logs/skoda_activity.conf 
 5583  2018-01-24 14:13:13 root vim /data/nginx/logs/skoda_mall_operation.conf 
 5584  2018-01-24 14:21:52 root vim /data/nginx/logs/skoda_activity.conf 
 5585  2018-01-25 10:24:36 root cd /data/nginx/html/uploads/lucene/xmlfile/
 5586  2018-01-25 15:07:45 root htop
 5587  2018-01-25 15:07:54 root docker ps
 5588  2018-01-25 15:14:53 root history 
 5589  2018-01-25 15:08:50 root htop
 5590  2018-01-25 15:10:27 root top
 5591  2018-01-25 15:10:34 root htop
 5592  2018-01-25 15:10:57 root df -h
 5593  2018-01-25 15:11:02 root cd /data/
 5594  2018-01-25 15:11:03 root ll
 5595  2018-01-25 15:12:03 root ping 192.168.0.235
 5596  2018-01-25 15:12:27 root date 
 5597  2018-01-25 15:12:36 root crontab -l
 5598  2018-01-25 15:12:40 root ntpdate ntp1.aliyun.com 
 5599  2018-01-25 15:13:44 root sysctl stop docker
 5600  2018-01-25 15:13:53 root systemctl stop docker
 5601  2018-01-25 15:14:09 root systemctl start docker
 5602  2018-01-25 15:21:52 root htop
 5603  2018-01-25 15:29:32 root docker ps
 5604  2018-01-25 15:41:29 root htop
 5605  2018-01-25 15:08:32 root tail -f /var/log/messages
 5606  2018-01-25 15:40:58 root df -h
 5607  2018-01-25 15:15:19 root htop
 5608  2018-01-25 15:18:47 root ps -ef|grep docker
 5609  2018-01-25 15:19:18 root setenforce 0
 5610  2018-01-25 15:19:26 root systemctl stop firewalld
 5611  2018-01-25 15:19:36 root ps -ef|grep docker
 5612  2018-01-25 15:19:39 root df -h
 5613  2018-01-26 15:25:50 root cd /data/nginx/
 5614  2018-01-26 15:26:03 root ll
 5615  2018-01-26 15:26:06 root ll conf.d/
 5616  2018-01-26 15:26:27 root vim logs/skoda_mall_e.conf 
 5617  2018-01-26 15:32:09 root vim logs/xiaochengxu.access.log 
 5618  2018-01-26 15:32:26 root vim logs/ecaddy_xiaochengxu.conf 
 5619  2018-01-26 15:32:53 root vim logs/skoda_mall_e.conf 
 5620  2018-01-26 17:10:01 root yum install qt-devel
 5621  2018-01-26 18:34:05 root ps -ef|grep nginx
 5622  2018-01-26 18:34:13 root cd /data/nginx/logs/
 5623  2018-01-26 18:34:13 root ls
 5624  2018-01-26 18:34:15 root ll
 5625  2018-01-26 18:34:20 root ip a
 5626  2018-01-26 18:34:27 root ifconfig -a|more
 5627  2018-01-26 18:34:31 root ls
 5628  2018-01-26 18:34:32 root pwd
 5629  2018-01-30 17:15:00 root yum install chrony
 5630  2018-01-30 17:15:24 root crontab -e
 5631  2018-01-30 17:15:31 root vim /etc/chrony.conf 
 5632  2018-01-30 17:15:45 root systemctl start chronyd
 5633  2018-01-30 17:16:01 root systemctl enable chronyd
 5634  2018-01-30 17:16:07 root chronyc sources
 5635  2018-01-30 17:16:26 root date 
 5636  2018-01-30 17:17:09 root chronyc sources
 5637  2018-01-30 17:17:26 root systemctl restart chronyd
 5638  2018-01-30 17:17:27 root chronyc sources
 5639  2018-01-30 17:58:51 root htop
 5640  2018-02-01 17:07:12 root ps -ef|grep cas
 5641  2018-02-01 17:07:23 root ps -ef|grep cass
 5642  2018-02-01 17:07:43 root cd /usr/share/
 5643  2018-02-01 17:07:43 root ls
 5644  2018-02-01 17:07:44 root ll
 5645  2018-02-01 17:07:53 root systemctl  status cassandra
 5646  2018-02-01 17:07:58 root cd /usr/local/
 5647  2018-02-01 17:07:58 root ls
 5648  2018-02-01 17:07:59 root ll
 5649  2018-02-01 17:08:01 root cd /data/
 5650  2018-02-01 17:08:02 root ls
 5651  2018-02-01 17:08:02 root ll
 5652  2018-02-01 17:08:07 root cd cassandra/
 5653  2018-02-01 17:08:07 root ls
 5654  2018-02-01 17:08:09 root cd cassandra/
 5655  2018-02-01 17:08:10 root ls
 5656  2018-02-01 17:08:12 root cd ..
 5657  2018-02-01 17:08:12 root ls
 5658  2018-02-01 17:08:18 root du -sh *
 5659  2018-02-01 17:08:29 root cd data/
 5660  2018-02-01 17:08:30 root ls
 5661  2018-02-01 17:08:31 root ll
 5662  2018-02-01 17:08:32 root du -sh *
 5663  2018-02-01 17:08:35 root cd im_store/
 5664  2018-02-01 17:08:35 root ls
 5665  2018-02-01 17:08:36 root ll
 5666  2018-02-01 17:08:38 root c 
 5667  2018-02-01 17:08:39 root cd 
 5668  2018-02-01 17:08:40 root ls
 5669  2018-01-31 14:04:52 root cd /data/nginx/conf.d/
 5670  2018-01-31 14:04:53 root ll
 5671  2018-01-31 14:05:04 root vi skoda_mall_chat.conf 
 5672  2018-02-06 17:05:20 root cd ../
 5673  2018-02-06 17:05:21 root ll
 5674  2018-02-06 17:05:25 root cd data/
 5675  2018-02-06 17:05:25 root ll
 5676  2018-02-06 17:05:58 root cd /data/nfs-rancher/skoda-1-tomcat
 5677  2018-02-06 17:06:01 root cd ..
 5678  2018-02-06 17:06:07 root cd /data/nfs-rancher/skoda-1-tomcat
 5679  2018-02-06 17:06:09 root cd ..
 5680  2018-02-06 17:06:09 root ll
 5681  2018-02-06 17:06:11 root cd ..
 5682  2018-02-06 17:06:12 root ll
 5683  2018-02-07 14:27:59 root cd /data/
 5684  2018-02-07 14:28:01 root cd nginx/
 5685  2018-02-07 14:28:02 root cd logs/
 5686  2018-02-07 14:28:03 root ll
 5687  2018-02-07 14:30:51 root vim minisite.eskoda.conf
 5688  2018-02-07 14:34:32 root ll ssl/
 5689  2018-02-07 14:34:49 root ll minisite.eskoda.conf 
 5690  2018-02-07 14:34:57 root pwd
 5691  2018-02-07 14:35:11 root pw
 5692  2018-02-07 14:35:16 root cd ../conf.d/
 5693  2018-02-07 14:35:17 root ll
 5694  2018-02-07 14:37:12 root cd ../logs/
 5695  2018-02-07 14:37:14 root ll
 5696  2018-02-07 14:38:10 root cd ssl/
 5697  2018-02-07 14:38:12 root ll
 5698  2018-02-07 14:38:26 root vim eskoda.crt
 5699  2018-02-07 14:38:43 root vim eskoda.key
 5700  2018-02-07 14:38:48 root pwd
 5701  2018-02-07 14:38:59 root cd ../
 5702  2018-02-07 14:39:01 root vim minisite.eskoda.conf 
 5703  2018-02-07 14:39:10 root cat minisite.eskoda.conf 
 5704  2018-02-07 14:39:24 root vim minisite.eskoda.conf 
 5705  2018-02-07 14:42:22 root cat minisite.eskoda.conf 
 5706  2018-02-07 14:42:50 root w
 5707  2018-02-07 14:43:02 root ps -ef|grep vi
 5708  2018-02-07 14:43:08 root kill 37958
 5709  2018-02-07 14:43:12 root vim minisite.eskoda.conf 
 5710  2018-02-07 14:43:22 root rm .minisite.eskoda.conf.swp y
 5711  2018-02-07 14:43:26 root vim minisite.eskoda.conf 
 5712  2018-02-07 14:45:38 root cat minisite.eskoda.conf 
 5713  2018-02-07 14:47:24 root vim minisite.eskoda.conf 
 5714  2018-02-07 14:48:08 root cat minisite.eskoda.conf 
 5715  2018-02-07 14:49:01 root cd ../
 5716  2018-02-07 14:49:02 root ll
 5717  2018-02-07 14:49:05 root ll conf.d/
 5718  2018-02-07 14:49:12 root vim conf.d/zimg.dlp-yappam.conf 
 5719  2018-02-07 14:53:31 root ll
 5720  2018-02-07 18:50:41 root vim logs/minisite.eskoda.conf 
 5721  2018-02-07 20:21:16 root curl -I dlog.eskoda.com.cn
 5722  2018-02-07 20:21:32 root traceroute dlog.eskoda.com.cn
 5723  2018-02-07 20:30:41 root curl -I dlog.eskoda.com.cn
 5724  2018-02-07 20:33:48 root traceroute www.eskoda.com.cn
 5725  2018-02-08 09:50:51 root traceroute dlog.eskoda.com.cn
 5726  2018-02-08 14:04:35 root htop
 5727  2018-02-08 14:04:50 root df -h
 5728  2018-02-08 14:04:59 root docker info
 5729  2018-02-08 15:09:34 root htop
 5730  2018-02-08 15:13:31 root cd logs/
 5731  2018-02-08 15:13:44 root vim skoda_mall_operation.conf 
 5732  2018-02-11 11:39:41 root telnet 192.168.0.243 6380
 5733  2018-02-11 11:39:45 root telnet 192.168.0.243 6379
 5734  2018-02-11 11:40:10 root docker ps|grep redis
 5735  2018-02-11 11:41:10 root netstat -anpt|grep 637
 5736  2018-02-11 11:41:11 root netstat -anpt|grep 63
 5737  2018-02-11 11:42:11 root docker ps
 5738  2018-02-11 11:42:15 root docker ps|grep re
 5739  2018-02-11 11:42:18 root docker ps|grep red
 5740  2018-02-11 17:11:55 root vim /data/nginx/logs/minisite.eskoda.conf 
 5741  2018-02-11 17:12:51 root vim /data/nginx/logs/skoda_mall_otd.conf 
 5742  2018-02-11 17:13:03 root vim /data/nginx/logs/skoda_mall_operation.conf 
 5743  2018-02-11 17:13:13 root vim /data/nginx/logs/minisite.eskoda.conf 
 5744  2018-02-11 17:15:25 root vim /data/nginx/logs/skoda_mall_operation.conf 
 5745  2018-02-11 17:15:46 root vim /data/nginx/logs/minisite.eskoda.conf 
 5746  2018-02-11 17:20:21 root cd /data/nginx/logs/
 5747  2018-02-11 17:20:22 root ll
 5748  2018-02-11 17:20:32 root vim /data/nginx/logs/skoda_mall_operation.conf 
 5749  2018-02-11 17:21:00 root vim /data/nginx/logs/skoda_mall_behavior.conf 
 5750  2018-02-11 17:21:19 root vim /data/nginx/logs/skoda_mall_chat.conf 
 5751  2018-02-11 17:21:44 root vim /data/nginx/logs/skoda_mall_otd.conf 
 5752  2018-02-11 17:21:50 root vim /data/nginx/logs/skoda_mall_report.conf 
 5753  2018-02-11 17:21:58 root vim /data/nginx/logs/skoda_mall_website.conf 
 5754  2018-02-11 17:24:48 root ll
 5755  2018-02-11 17:24:54 root ll *.log
 5756  2018-02-11 18:16:14 root vim ecaddy_xiaochengxu.conf 
 5757  2018-02-11 18:16:51 root mv *.log logs
 5758  2018-02-11 18:17:04 root ll
 5759  2018-02-11 19:01:27 root ll *.log
 5760  2018-02-11 19:01:36 root vim skoda_activity.conf 
 5761  2018-02-11 19:02:01 root vim skoda-73.conf 
 5762  2018-02-11 11:29:51 root netstat -anlp|grep 2095
 5763  2018-02-11 11:30:00 root cd /data/
 5764  2018-02-11 11:30:00 root ls
 5765  2018-02-11 11:30:03 root cd nginx/
 5766  2018-02-11 11:30:03 root ;s
 5767  2018-02-11 11:30:04 root ls
 5768  2018-02-11 11:30:05 root cd conf.d/
 5769  2018-02-11 11:30:06 root ls
 5770  2018-02-11 11:30:09 root cd ..
 5771  2018-02-11 11:30:09 root ls
 5772  2018-02-11 11:30:10 root cd logs/
 5773  2018-02-11 11:30:11 root ls
 5774  2018-02-11 11:30:15 root ll
 5775  2018-02-12 18:14:01 root ps -ef|grep nginx
 5776  2018-02-12 18:23:12 root cd /data/nginx/conf.d/
 5777  2018-02-12 18:23:12 root ls
 5778  2018-02-12 18:23:13 root ll
 5779  2018-02-12 18:23:20 root cd ..
 5780  2018-02-12 18:23:20 root ls
 5781  2018-02-07 16:22:40 root cd ..
 5782  2018-02-07 16:22:42 root cd /data/
 5783  2018-02-07 16:22:44 root ll
 5784  2018-02-07 16:22:52 root cd tomcat/
 5785  2018-02-07 16:22:53 root ll
 5786  2018-02-07 16:22:58 root cd springboot/
 5787  2018-02-07 16:22:59 root ll
 5788  2018-02-07 16:25:39 root pwd
 5789  2018-02-08 12:19:59 root cd ..
 5790  2018-02-08 12:20:00 root ll
 5791  2018-02-08 12:20:03 root cd webapps/
 5792  2018-02-08 12:20:04 root ll
 5793  2018-02-08 12:20:11 root cd ..
 5794  2018-02-08 12:20:13 root ll
 5795  2018-02-08 12:20:16 root cd tomcat/
 5796  2018-02-08 12:20:16 root ll
 5797  2018-02-08 12:20:19 root cd webapps/
 5798  2018-02-08 12:20:20 root ll
 5799  2018-02-08 12:20:28 root ps -ef|grep java 
 5800  2018-02-08 12:20:43 root cd ..
 5801  2018-02-08 12:20:43 root ll
 5802  2018-02-08 12:20:44 root cd ..
 5803  2018-02-08 12:20:45 root ll
 5804  2018-02-08 12:20:49 root cd /data/
 5805  2018-02-08 12:20:49 root ll
 5806  2018-02-08 12:21:04 root cd tomcat/
 5807  2018-02-08 12:21:05 root ll
 5808  2018-02-08 12:21:08 root cd spring
 5809  2018-02-08 12:21:12 root cd springscheduler/
 5810  2018-02-08 12:21:12 root ll
 5811  2018-02-08 12:21:14 root cd ..
 5812  2018-02-08 12:21:15 root ll
 5813  2018-02-08 12:21:16 root cd webapps/
 5814  2018-02-08 12:21:17 root ll
 5815  2018-02-08 12:30:33 root docker images
 5816  2018-02-08 13:44:46 root docker exec -it f5ee8e45a781 bash
 5817  2018-02-08 13:45:06 root docker images
 5818  2018-02-08 13:45:41 root docker exec -it af903aadbada  bash
 5819  2018-02-08 13:50:34 root ps -ef |grep java 
 5820  2018-02-08 13:50:43 root ps -ef |grep tomcat
 5821  2018-02-08 14:02:14 root netstat -al |grep 80
 5822  2018-02-08 14:03:35 root docker search tomcat
 5823  2018-02-08 16:43:55 root kk
 5824  2018-02-08 16:43:59 root cd /data/
 5825  2018-02-08 16:43:59 root ll
 5826  2018-02-08 16:44:01 root cd tomcat/
 5827  2018-02-08 16:44:02 root ll
 5828  2018-02-08 16:44:03 root cd webapps/
 5829  2018-02-08 16:44:04 root ll
 5830  2018-02-08 16:44:07 root cd operation/
 5831  2018-02-08 16:44:08 root ll
 5832  2018-02-08 16:44:11 root cd WEB-INF/
 5833  2018-02-08 16:44:11 root LL
 5834  2018-02-08 16:44:14 root ll
 5835  2018-02-08 16:44:16 root cd ..
 5836  2018-02-08 16:44:17 root ll
 5837  2018-02-08 16:44:18 root cd ..
 5838  2018-02-08 16:44:19 root ll
 5839  2018-02-08 16:44:20 root cd ..
 5840  2018-02-08 16:44:22 root ll
 5841  2018-02-08 16:44:26 root cd webapps/
 5842  2018-02-08 16:44:27 root ll
 5843  2018-02-08 21:02:35 root cd ..
 5844  2018-02-08 21:02:36 root ll
 5845  2018-02-08 21:02:41 root cd springboot/
 5846  2018-02-08 21:02:42 root ll
 5847  2018-02-08 21:02:45 root cd ..
 5848  2018-02-08 21:02:54 root ps -ef|grep java 
 5849  2018-02-09 14:21:44 root cd ..
 5850  2018-02-09 14:21:45 root ll
 5851  2018-02-09 14:21:48 root cd nginx/
 5852  2018-02-09 14:21:49 root ll
 5853  2018-02-09 14:21:52 root cd logs/
 5854  2018-02-09 14:21:52 root ll
 5855  2018-02-09 14:22:19 root cat skoda_mall_website.conf 
 5856  2018-02-09 14:22:41 root cd ..
 5857  2018-02-09 14:22:42 root cd logs/
 5858  2018-02-09 14:22:43 root ll
 5859  2018-02-09 14:22:52 root cat skoda_mall_chat.conf 
 5860  2018-02-09 14:33:09 root cd ..
 5861  2018-02-09 14:33:10 root ll
 5862  2018-02-09 14:33:12 root cd ..
 5863  2018-02-09 14:33:13 root ll
 5864  2018-02-09 14:33:15 root cd tomcat/
 5865  2018-02-09 14:33:16 root ll
 5866  2018-02-09 14:33:20 root cd springscheduler/
 5867  2018-02-09 14:33:20 root ll
 5868  2018-02-09 14:33:27 root ps -ef |grep 256
 5869  2018-02-09 14:33:39 root cd skodamall_leads_256/
 5870  2018-02-09 14:33:40 root ll
 5871  2018-02-09 14:33:49 root tail -f nohup.out 
 5872  2018-02-09 14:34:15 root tail -1000f nohup.out 
 5873  2018-02-09 14:34:31 root ps -ef |grep 256
 5874  2018-02-09 14:34:41 root ll
 5875  2018-02-09 14:34:42 root cd ..
 5876  2018-02-09 14:34:43 root ll
 5877  2018-02-09 14:34:58 root ps -ef|grep skodamall_leads_256
 5878  2018-02-09 14:35:07 root ll
 5879  2018-02-09 14:35:09 root cd skodamall_leads_256/
 5880  2018-02-09 14:35:10 root ll
 5881  2018-02-09 14:35:13 root ./startDoss.sh 
 5882  2018-02-09 14:35:30 root tail -f nohup.out 
 5883  2018-02-11 15:33:45 root ll
 5884  2018-02-11 15:37:50 root ps -ef|grep 
 5885  2018-02-11 15:37:53 root ps -ef|grep  java 
 5886  2018-02-11 15:38:33 root kill -9 42765
 5887  2018-02-11 15:38:35 root ll
 5888  2018-02-11 15:38:38 root ./startDoss.sh 
 5889  2018-02-11 15:38:44 root tail -f nohup.out 
 5890  2018-02-11 15:39:00 root ps -ef|grep java 
 5891  2018-02-11 15:39:52 root ps -ef|grep java |grep 256
 5892  2018-02-11 15:40:35 root kill -9 9697
 5893  2018-02-11 15:40:37 root ps -ef|grep java |grep 256
 5894  2018-02-11 15:40:58 root kill -9 13664
 5895  2018-02-11 15:41:00 root ps -ef|grep java |grep 256
 5896  2018-02-11 15:41:04 root ll
 5897  2018-02-11 15:41:06 root ./startDoss.sh 
 5898  2018-02-11 15:41:11 root tail -f nohup.out 
 5899  2018-02-11 15:41:40 root ./startDoss.sh 
 5900  2018-02-11 15:41:46 root tail -f nohup.out 
 5901  2018-02-11 15:42:08 root ps -ef|grep java |grep skodamall_leads_256
 5902  2018-02-11 15:42:20 root ps -ef|grep java |grep leads
 5903  2018-02-11 15:42:51 root ps -ef|grep java |grep clue
 5904  2018-02-11 15:43:06 root tail -10000f nohup.out 
 5905  2018-02-11 15:43:36 root tail -20000f nohup.out 
 5906  2018-02-11 15:43:49 root tail -200000f nohup.out 
 5907  2018-02-11 15:48:56 root ./startDoss.sh 
 5908  2018-02-11 15:49:00 root tail -f nohup.out 
 5909  2018-02-11 16:14:21 root ps -ef|grep java 
 5910  2018-02-11 16:14:44 root kill -9 15866
 5911  2018-02-11 16:15:24 root ps -ef|grep java 
 5912  2018-02-11 16:15:46 root kill -9 16325
 5913  2018-02-11 16:15:54 root ps -ef|grep java 
 5914  2018-02-11 16:16:12 root kill -9 21734
 5915  2018-02-11 16:16:16 root ps -ef|grep java 
 5916  2018-02-11 16:16:24 root ./startDoss.sh 
 5917  2018-02-11 16:16:30 root tail -f nohup.out 
 5918  2018-02-11 16:16:41 root ps -ef|grep java 
 5919  2018-02-11 16:21:21 root tail -f nohup.out 
 5920  2018-02-11 16:22:52 root cd ..
 5921  2018-02-11 16:22:53 root ll
 5922  2018-02-11 16:22:55 root cd skodamall_leads_256/
 5923  2018-02-11 16:22:56 root ll
 5924  2018-02-11 16:23:01 root cat config.properties 
 5925  2018-02-11 16:25:36 root ll
 5926  2018-02-11 16:25:42 root ps -ef|grep java 
 5927  2018-02-11 16:26:00 root kill -9 46313
 5928  2018-02-11 16:26:01 root ll
 5929  2018-02-11 16:26:04 root ./startDoss.sh 
 5930  2018-02-11 16:26:09 root tail -f nohup.out 
 5931  2018-02-11 16:44:05 root cat http://interfaces.skoda-1.com/skoda_interfaces/processleads/fromweb/submitclue.interface
 5932  2018-02-11 16:44:14 root curl http://interfaces.skoda-1.com/skoda_interfaces/processleads/fromweb/submitclue.interface
 5933  2018-02-11 16:46:59 root ll
 5934  2018-02-11 16:47:01 root cd ..
 5935  2018-02-11 16:47:05 root pw
 5936  2018-02-11 16:47:08 root pwd
 5937  2018-02-11 16:47:33 root ping interfaces.skoda-1.com
 5938  2018-02-11 16:48:21 root caurl http://interfaces.skoda-1.com/skoda_interfaces/processleads/fromweb/submitclue.interface
 5939  2018-02-11 16:48:28 root curl http://interfaces.skoda-1.com/skoda_interfaces/processleads/fromweb/submitclue.interface
 5940  2018-02-11 16:49:18 root ll
 5941  2018-02-11 16:49:20 root cd skodamall_leads_256/
 5942  2018-02-11 16:49:21 root ll
 5943  2018-02-11 16:49:26 root tail -f nohup.out 
 5944  2018-02-12 11:50:23 root cd ..
 5945  2018-02-12 11:50:25 root ll
 5946  2018-02-12 11:50:26 root cd ..
 5947  2018-02-12 11:50:27 root ll
 5948  2018-02-12 11:50:34 root cd ..
 5949  2018-02-12 11:50:36 root cd nginx/
 5950  2018-02-12 11:50:36 root ll
 5951  2018-02-12 11:50:38 root cd logs/
 5952  2018-02-12 11:50:38 root ll
 5953  2018-02-12 11:50:56 root cat skoda_mall_chat.conf 
 5954  2018-02-12 11:51:21 root docker images
 5955  2018-02-12 11:55:09 root vim  skoda_mall_chat.conf 
 5956  2018-02-12 11:55:20 root vim skoda_mall_chat.conf 
 5957  2018-02-12 11:56:22 root ll
 5958  2018-02-12 11:56:37 root cat skoda_mall_wxmp.conf 
 5959  2018-02-12 11:56:47 root ll
 5960  2018-02-12 11:56:59 root cat skoda_mall_website.conf 
 5961  2018-02-12 11:57:24 root ll
 5962  2018-02-12 11:58:05 root docker images
 5963  2018-02-12 11:58:31 root ll
 5964  2018-02-12 11:58:41 root vim skoda_mall_chat.conf 
 5965  2018-02-12 11:59:53 root cat skoda_mall_website.conf 
 5966  2018-02-12 12:00:24 root ll
 5967  2018-02-12 12:00:33 root vim skoda_mall_wxmp.conf 
 5968  2018-02-12 12:00:49 root vim skoda_mall_chat.conf 
 5969  2018-02-12 12:02:33 root ps -ef|grep nginx
 5970  2018-02-12 12:04:11 root vim skoda_mall_chat.conf 
 5971  2018-02-12 12:04:21 root cat skoda_mall_chat.conf 
 5972  2018-02-12 12:23:40 root ll
 5973  2018-02-12 12:23:49 root cat skoda_mall_wxmp.conf 
 5974  2018-02-12 12:24:14 root vim skoda_mall_wxmp.conf 
 5975  2018-02-12 12:26:29 root cat skoda_mall_wxmp.conf 
 5976  2018-02-12 12:28:44 root vim skoda_mall_wxmp.conf 
 5977  2018-02-12 12:29:38 root cat skoda_mall_wxmp.conf 
 5978  2018-02-12 13:58:28 root cd ..
 5979  2018-02-12 13:58:28 root ll
 5980  2018-02-12 13:58:34 root cd ..
 5981  2018-02-12 13:58:34 root ll
 5982  2018-02-12 17:25:28 root dc tomcat/
 5983  2018-02-12 17:25:29 root ll
 5984  2018-02-12 17:25:31 root cd tomcat/
 5985  2018-02-12 17:25:31 root ll
 5986  2018-02-12 17:25:36 root cd springscheduler/
 5987  2018-02-12 17:25:37 root ll
 5988  2018-02-12 17:25:40 root cd skodamall_leads_256/
 5989  2018-02-12 17:25:40 root ll
 5990  2018-02-12 17:25:44 root tail -f nohup.out 
 5991  2018-02-12 17:27:46 root date
 5992  2018-02-12 17:50:36 root tail -f nohup.out 
 5993  2018-02-12 17:51:49 root tail -200f nohup.out 
 5994  2018-02-11 10:54:07 root cd ..
 5995  2018-02-11 10:54:09 root cd data/
 5996  2018-02-11 10:54:09 root ll
 5997  2018-02-11 10:54:12 root cd tomcat/
 5998  2018-02-11 10:54:13 root ll
 5999  2018-02-11 10:54:14 root cd spring
 6000  2018-02-11 10:54:17 root cd springboot/
 6001  2018-02-11 10:54:20 root ll
 6002  2018-02-11 10:54:52 root cd ..
 6003  2018-02-11 10:54:53 root ll
 6004  2018-02-11 10:54:56 root cd mss
 6005  2018-02-11 10:54:57 root ll
 6006  2018-02-11 10:55:11 root cd ..
 6007  2018-02-11 10:55:12 root ll
 6008  2018-02-11 10:55:19 root cd ..
 6009  2018-02-11 10:55:21 root ll
 6010  2018-02-11 10:55:26 root cd nginx/
 6011  2018-02-11 10:55:28 root lk
 6012  2018-02-11 10:55:30 root ll
 6013  2018-02-11 10:55:33 root cd logs/
 6014  2018-02-11 10:55:33 root ll
 6015  2018-02-11 10:55:45 root cat skoda_mall_chat.conf 
 6016  2018-02-11 10:56:18 root ll
 6017  2018-02-11 10:56:32 root cat skoda_mall_wxmp.conf 
 6018  2018-02-11 10:57:00 root cd ..
 6019  2018-02-11 10:57:00 root ll
 6020  2018-02-11 10:57:03 root cd logs/
 6021  2018-02-11 10:57:04 root ll
 6022  2018-02-11 10:57:13 root cd ..
 6023  2018-02-11 10:57:15 root ll
 6024  2018-02-11 10:57:17 root cd tomcat/
 6025  2018-02-11 10:57:18 root ll
 6026  2018-02-11 10:57:22 root cd springboot/
 6027  2018-02-11 10:57:23 root ll
 6028  2018-02-11 11:16:55 root ps -ef|grep java 
 6029  2018-02-11 11:17:11 root ps -ef|grep wxmp-server-1.0.0
 6030  2018-02-11 11:17:22 root ps -ef|grep java 
 6031  2018-02-11 11:18:26 root ll
 6032  2018-02-11 11:19:23 root cd ..
 6033  2018-02-11 11:19:24 root ll
 6034  2018-02-11 11:19:26 root cd mss
 6035  2018-02-11 11:19:27 root ll
 6036  2018-02-11 11:19:31 root cd ..
 6037  2018-02-11 11:19:32 root ll
 6038  2018-02-11 11:19:34 root cd spring
 6039  2018-02-11 11:19:40 root cd springboot/
 6040  2018-02-11 11:19:40 root ll
 6041  2018-02-11 11:19:46 root ps -ef|grep java 
 6042  2018-02-11 11:20:33 root ps -ef|grep java |grep wxmp
 6043  2018-02-11 11:21:16 root cd ..
 6044  2018-02-11 11:21:17 root ll
 6045  2018-02-11 11:21:22 root cd webapps/
 6046  2018-02-11 11:21:23 root ll
 6047  2018-02-11 11:21:27 root cd ..
 6048  2018-02-11 11:21:27 root ll
 6049  2018-02-11 11:21:38 root cd mss.bak/
 6050  2018-02-11 11:21:39 root ll
 6051  2018-02-11 11:21:43 root cd ..
 6052  2018-02-11 11:21:44 root ll
 6053  2018-02-11 11:21:48 root cd mss
 6054  2018-02-11 11:21:49 root ll
 6055  2018-02-11 11:21:54 root cd ..
 6056  2018-02-11 11:21:58 root cd springboot/
 6057  2018-02-11 11:21:59 root ll
 6058  2018-02-11 11:27:05 root netstat -nap | grep 33816
 6059  2018-02-11 11:27:26 root netstat -nap | grep pid 
 6060  2018-02-11 11:28:10 root ll
 6061  2018-02-11 11:28:11 root cd ..
 6062  2018-02-11 11:28:13 root ll
 6063  2018-02-11 11:28:14 root cd nginx/
 6064  2018-02-11 11:28:15 root ll
 6065  2018-02-11 11:28:17 root cd logs/
 6066  2018-02-11 11:28:17 root ll
 6067  2018-02-11 11:28:23 root cat skoda_mall_wxmp.conf 
 6068  2018-02-11 11:28:37 root cd ..
 6069  2018-02-11 11:28:37 root ll
 6070  2018-02-11 11:28:40 root cd ..
 6071  2018-02-11 11:28:41 root ll
 6072  2018-02-11 11:28:44 root cd tomcat/
 6073  2018-02-11 11:28:45 root ll
 6074  2018-02-11 11:28:52 root cd springboot/
 6075  2018-02-11 11:28:53 root ll
 6076  2018-02-11 11:55:38 root ps -ef|grep java 
 6077  2018-02-11 11:56:08 root cd ..
 6078  2018-02-11 11:56:08 root ll
 6079  2018-02-11 11:56:11 root cd ..
 6080  2018-02-11 11:56:12 root ll
 6081  2018-02-11 11:56:13 root cd nginx/
 6082  2018-02-11 11:56:13 root ll
 6083  2018-02-11 11:56:15 root cd logs/
 6084  2018-02-11 11:56:26 root cd ..
 6085  2018-02-11 11:56:26 root ll
 6086  2018-02-11 11:56:28 root cd conf.d/
 6087  2018-02-11 11:56:29 root ll
 6088  2018-02-11 11:56:37 root cat skoda_mall_wxmp.conf 
 6089  2018-02-11 12:04:38 root ll
 6090  2018-02-11 12:17:37 root cd ..
 6091  2018-02-11 12:17:38 root ll
 6092  2018-02-11 12:17:39 root cd ..
 6093  2018-02-11 12:17:39 root ll
 6094  2018-02-11 12:17:41 root cd ..
 6095  2018-02-11 12:17:42 root ll
 6096  2018-02-12 16:42:11 root telnet 127.0.0.1 11211
 6097  2018-02-12 18:15:41 root cd /data/nginx/logs/
 6098  2018-02-12 18:15:45 root ll
 6099  2018-02-12 18:15:49 root vim minisite.eskoda.conf 
 6100  2018-02-12 18:15:52 root w
 6101  2018-02-12 18:15:58 root rm .minisite.eskoda.conf.swp 
 6102  2018-02-12 18:16:00 root vim minisite.eskoda.conf 
 6103  2018-02-12 21:36:23 root htop
 6104  2018-02-12 21:36:27 root df -h
 6105  2018-02-12 21:48:59 root vim skoda_mall_operation.conf 
 6106  2018-02-12 21:53:08 root curl -I minisite.eskoda.com.cn/mobiledata/activity/index/
 6107  2018-02-12 21:54:03 root curl -I minisite.eskoda.com.cn/mobiledata/activity/index
 6108  2018-02-12 21:54:08 root curl -I minisite.eskoda.com.cn/mobiledata/activity/index/
 6109  2018-02-12 21:57:30 root vim skoda_mall_operation.conf 
 6110  2018-02-12 21:57:37 root vim minisite.eskoda.conf 
 6111  2018-02-13 10:28:19 root curl -I http://minisite.eskoda.com.cn/mobiledata/activity/index
 6112  2018-02-13 10:28:24 root curl -I https://minisite.eskoda.com.cn/mobiledata/activity/index
 6113  2018-02-13 14:44:03 root vim skoda_mall_operation.conf 
 6114  2018-02-13 17:07:48 root telnet  127.0.0.1  11211
 6115  2018-02-23 10:25:03 root docker stats
 6116  2018-02-23 10:25:18 root docker ps |grep 151a52
 6117  2018-02-23 10:25:25 root docker logs 151a52
 6118  2018-02-23 10:25:36 root docker inspect 151a52
 6119  2018-02-23 11:10:26 root htop
 6120  2018-02-23 11:10:31 root df -0h
 6121  2018-02-23 11:10:33 root df -h
 6122  2018-02-23 11:29:58 root cat /etc/docker/daemon.json
 6123  2018-02-23 11:50:05 root docker images 
 6124  2018-02-23 11:50:20 root docker images |grep rancher
 6125  2018-02-23 11:50:55 root docker tag docker.io/rancher/agent:v1.2.9 registry.yappam.com/rancher/agent:v1.2.9
 6126  2018-02-23 11:51:05 root docker push registry.yappam.com/rancher/agent:v1.2.9
 6127  2018-02-23 14:57:12 root  dnsmasq --test
 6128  2018-02-07 14:29:14 root cd /data/nginx/conf.d/
 6129  2018-02-07 14:29:15 root ll
 6130  2018-02-07 14:29:31 root vi eskoda.conf 
 6131  2018-02-07 14:33:13 root ll
 6132  2018-02-07 14:33:19 root vi index.conf 
 6133  2018-02-07 14:34:27 root ll
 6134  2018-02-07 14:36:44 root cd ../
 6135  2018-02-07 14:36:46 root cd logs/
 6136  2018-02-07 14:36:47 root ll
 6137  2018-02-07 14:36:52 root vi minisite.eskoda.conf 
 6138  2018-02-07 14:52:00 root ll
 6139  2018-02-07 14:52:02 root vi minisite.eskoda.conf 
 6140  2018-02-07 14:52:12 root vi skoda_mall_wxmp.conf 
 6141  2018-02-07 14:52:25 root vi minisite.eskoda.conf 
 6142  2018-02-07 15:32:16 root pwd
 6143  2018-02-07 15:32:20 root cd ../html/
 6144  2018-02-07 15:32:20 root ll
 6145  2018-02-07 15:33:13 root cd ../logs/
 6146  2018-02-07 15:33:19 root vi minisite.eskoda.conf 
 6147  2018-02-07 15:33:23 root pwd
 6148  2018-02-07 15:33:28 root vi minisite.eskoda.conf 
 6149  2018-02-08 09:59:47 root ll
 6150  2018-02-08 10:00:05 root cd ../conf.d/
 6151  2018-02-08 10:00:10 root ll
 6152  2018-02-08 10:00:21 root vi skoda_mall_chat.conf 
 6153  2018-02-10 10:38:23 root ll
 6154  2018-02-10 10:38:31 root cd ../logs/
 6155  2018-02-10 10:38:31 root ll
 6156  2018-02-10 10:38:35 root vi minisite.eskoda.conf 
 6157  2018-02-12 11:44:57 root ll
 6158  2018-02-12 11:45:05 root vi skoda_mall_chat.conf 
 6159  2018-02-12 11:46:14 root vi minisite.eskoda.conf 
 6160  2018-02-12 11:46:47 root vi skoda_mall_chat.conf 
 6161  2018-02-12 14:32:23 root vi minisite.eskoda.conf 
 6162  2018-02-12 18:25:08 root vi skoda_mall_website.conf 
 6163  2018-02-26 17:20:56 root docker ps|grep dns
 6164  2018-02-26 17:21:03 root vim /etc/hosts
 6165  2018-02-28 10:52:28 root cd ..
 6166  2018-02-28 10:52:29 root ll
 6167  2018-02-28 10:52:39 root cd data/
 6168  2018-02-28 10:52:40 root ll
 6169  2018-02-28 10:52:41 root cd nginx/
 6170  2018-02-28 10:52:42 root ll
 6171  2018-02-28 10:52:44 root cd logs/
 6172  2018-02-28 10:52:45 root ll
 6173  2018-02-28 10:52:56 root cat skoda_mall_wxmp.conf 
 6174  2018-02-28 10:53:08 root cat skoda_mall_chat.conf 
 6175  2018-02-28 11:05:02 root cat skoda_mall_wxmp.conf 
 6176  2018-03-01 09:42:48 root ps -ef|grep memcached
 6177  2018-03-01 09:48:31 root telnet 127.0.0.1 11211
 6178  2018-03-01 09:51:14 root telnet memcache 11211
 6179  2018-03-03 13:31:42 root ps -ef|grep java
 6180  2018-03-03 13:31:44 root df -h
 6181  2018-03-03 13:31:48 root cd /d
 6182  2018-03-03 13:31:50 root cd /
 6183  2018-03-03 13:31:50 root ls
 6184  2018-03-03 13:32:00 root find /* -name centos_7.3*
 6185  2018-03-05 17:30:11 root docker info
 6186  2018-03-05 17:42:23 root df -h
 6187  2018-03-05 17:42:25 root ifconfig -a
 6188  2018-03-05 17:42:37 root docker info
 6189  2018-03-01 14:31:48 root fdisk -l
 6190  2018-03-01 14:32:36 root df -h
 6191  2018-03-05 09:48:28 root ifconfig -a
 6192  2018-03-08 09:47:47 root df -h
 6193  2018-03-08 09:48:45 root redis
 6194  2018-03-09 17:26:09 root virsh list --all|grep 52
 6195  2018-03-09 17:26:22 root virsh list --all|grep HX
 6196  2018-03-09 17:26:39 root virsh list --all|grep hx
 6197  2018-03-08 11:43:18 root lspci 
 6198  2018-03-08 11:43:21 root lscpu 
 6199  2018-03-08 11:43:33 root df -h
 6200  2018-03-08 11:44:36 root yum install -y rpc-bind nfs-utils
 6201  2018-03-08 11:45:16 root yum -y install nfs-utils rpcbind
 6202  2018-03-08 12:03:12 root cd /data/
 6203  2018-03-08 12:03:13 root ll
 6204  2018-03-08 12:03:27 root mkdir nfs
 6205  2018-03-08 12:03:28 root ll
 6206  2018-03-08 12:03:38 root vim /etc/exports
 6207  2018-03-08 12:03:52 root export
 6208  2018-03-08 12:03:54 root exportfs 
 6209  2018-03-08 12:03:57 root vim /etc/exports
 6210  2018-03-08 12:04:32 root exportfs -r
 6211  2018-03-08 12:04:34 root exportfs 
 6212  2018-03-08 12:06:36 root ll
 6213  2018-03-08 12:06:45 root chmod 777 n
 6214  2018-03-08 12:06:47 root chmod 777 nfs/
 6215  2018-03-08 12:07:04 root exportfs 
 6216  2018-03-08 12:07:14 root ll nfs/
 6217  2018-03-08 12:07:16 root ll nfs/47ecf058-fcd3-4c54-9bd6-d42c0b14968c/
 6218  2018-03-08 12:07:18 root ll nfs/47ecf058-fcd3-4c54-9bd6-d42c0b14968c/images/
 6219  2018-03-08 13:30:46 root ip a
 6220  2018-03-08 13:50:31 root iftop
 6221  2018-03-08 13:51:29 root lscpu 
 6222  2018-03-08 13:51:35 root cat /proc/cpuinfo 
 6223  2018-03-08 13:52:11 root iftop
 6224  2018-03-09 16:06:43 root htop
 6225  2018-03-11 09:57:51 root docker ps |grep zimg
 6226  2018-03-11 09:59:28 root docker ps|grep ebuick
 6227  2018-03-11 09:59:50 root fuser -m /data/ebuick_zimg
 6228  2018-03-11 09:59:56 root cd /data/ebuick
 6229  2018-03-11 09:59:58 root cd ..
 6230  2018-03-11 09:59:59 root ls
 6231  2018-03-11 10:00:03 root cd /data/ebuick_zimg/
 6232  2018-03-11 10:00:04 root ls
 6233  2018-03-11 10:00:07 root du -sh *
 6234  2018-03-11 10:00:10 root cd ..
 6235  2018-03-11 10:00:11 root ls
 6236  2018-03-11 10:01:17 root docker ps|grep zimg-ebuick
 6237  2018-03-11 10:12:34 root fuser -m
 6238  2018-03-11 10:12:36 root fuser -m /data/ebuick_zimg
 6239  2018-03-12 12:15:38 root virsh list --all|grep 33
 6240  2018-03-14 17:13:07 root virt-manager
 6241  2018-03-14 18:05:38 root virsh list --all|grep k8s
 6242  2018-03-14 18:15:21 root history |grep mount
 6243  2018-03-15 09:45:38 root virsh list --all|grep k8s
 6244  2018-03-15 13:41:06 root cd /data/nginx/logs/
 6245  2018-03-15 13:41:06 root ls
 6246  2018-03-15 13:41:16 root grep xiaochengx * -rl
 6247  2018-03-15 13:41:21 root vim ecaddy_xiaochengxu.conf 
 6248  2018-03-15 13:41:50 root cd ..
 6249  2018-03-15 13:41:50 root ls
 6250  2018-03-15 13:41:52 root cd conf.d/
 6251  2018-03-15 13:41:53 root ls
 6252  2018-03-15 13:41:56 root vim index.conf 
 6253  2018-03-15 13:42:10 root grep ecaddy-xiaochengxu * -rl
 6254  2018-03-15 13:42:12 root cd ..
 6255  2018-03-15 13:42:13 root ls
 6256  2018-03-15 13:42:14 root cd logs
 6257  2018-03-15 13:42:14 root ls
 6258  2018-03-15 13:42:25 root vim ecaddy_xiaochengxu.conf 
 6259  2018-03-15 13:42:34 root grep xiaochengxu * -rl
 6260  2018-03-15 13:42:40 root vim ecaddy_xiaochengxu.conf 
 6261  2018-03-15 13:42:59 root ps -ef|grep nginx
 6262  2018-03-15 13:43:07 root cd /data/nginx/conf.d/
 6263  2018-03-15 13:43:07 root ls
 6264  2018-03-15 13:43:13 root docker ps|grep nginx
 6265  2018-03-15 13:52:42 root docker exec -it 6e35ca856e46 bash
 6266  2018-03-15 10:58:01 root free -m
 6267  2018-03-15 12:05:41 root virsh list --all|grep k8s
 6268  2018-03-16 10:05:28 root df -h
 6269  2018-03-19 11:32:00 root ls
 6270  2018-03-19 11:32:10 root cd /opt/
 6271  2018-03-19 11:32:10 root ls
 6272  2018-03-19 11:32:12 root cd 
 6273  2018-03-19 11:32:13 root ls
 6274  2018-03-19 11:32:35 root cd /data/
 6275  2018-03-19 11:32:36 root ls
 6276  2018-03-19 11:32:59 root more cassand-cron.sh 
 6277  2018-03-19 10:10:59 root uym repolist
 6278  2018-03-19 10:11:03 root yum repolist
 6279  2018-03-19 10:11:17 root yum install php5-*
 6280  2018-03-19 10:11:29 root yum install php5*
 6281  2018-03-19 10:11:49 root yum repolist
 6282  2018-03-19 10:11:53 root yum install php56*
 6283  2018-03-19 10:12:17 root vim /etc/yum.repos.d/yum7-new.repo 
 6284  2018-03-19 10:12:37 root yum install php56*
 6285  2018-03-19 10:13:09 root yum install php-redis
 6286  2018-03-19 10:13:37 root yum install php
 6287  2018-03-19 10:14:11 root vim /etc/yum.repos.d/yum7-new.repo 
 6288  2018-03-19 10:14:18 root yum install php
 6289  2018-03-19 10:23:27 root yum install pdo
 6290  2018-03-19 10:23:30 root yum install php-pdo
 6291  2018-03-19 10:24:12 root yum install filter
 6292  2018-03-19 10:24:17 root yum install php-filter
 6293  2018-03-19 11:26:16 root cd /data/nginx/
 6294  2018-03-19 11:26:17 root cd logs/
 6295  2018-03-19 11:26:19 root ll
 6296  2018-03-19 11:26:25 root vim skoda_activity.conf 
 6297  2018-03-19 11:59:12 root htop
 6298  2018-03-19 14:54:39 root nmap -O 139.219.224.231
 6299  2018-03-19 14:54:50 root telnet 139.219.224.231 80
 6300  2018-03-19 14:54:53 root telnet 139.219.224.231 443
 6301  2018-03-19 14:54:59 root telnet 139.219.224.231 55001
 6302  2018-03-19 17:23:57 root vim skoda_activity.conf 
 6303  2018-03-19 17:30:26 root vim skoda_mall_operation.conf 
 6304  2018-03-19 17:31:31 root ping 192.168.0.58
 6305  2018-03-19 17:39:49 root vim skoda_mall_operation.conf 
 6306  2018-03-19 18:20:06 root telnet 139.219.224.231 10001
 6307  2018-03-20 16:48:02 root cd /data/
 6308  2018-03-20 16:48:03 root ls
 6309  2018-03-20 16:48:23 root cd ls
 6310  2018-03-20 16:48:25 root ls
 6311  2018-03-20 16:48:36 root cd tomcat/
 6312  2018-03-20 16:48:38 root ls
 6313  2018-03-20 16:48:44 root cd webapps/operation/
 6314  2018-03-20 16:48:45 root ls
 6315  2018-03-20 16:48:50 root cd WEB-INF/
 6316  2018-03-20 16:48:51 root ls
 6317  2018-03-20 20:08:58 root ps -ef|grep nginx
 6318  2018-03-20 20:09:03 root cd /data/nginx/html/
 6319  2018-03-20 20:09:03 root ls
 6320  2018-03-20 20:09:08 root cd chat/
 6321  2018-03-20 20:09:08 root ls
 6322  2018-03-20 20:09:10 root du -sh *
 6323  2018-03-20 20:10:00 root pwd
 6324  2018-03-20 20:10:02 root cd ..
 6325  2018-03-20 20:10:02 root pwd
 6326  2018-03-20 20:15:24 root ifconfig -a|grep 234
 6327  2018-03-20 20:49:58 root ps -ef | grep java
 6328  2018-03-20 20:50:01 root ps -ef | grep nginx
 6329  2018-03-20 20:50:05 root cd /data/n
 6330  2018-03-20 20:50:10 root cd /data/nginx/
 6331  2018-03-20 20:50:11 root ll
 6332  2018-03-20 20:50:13 root cd conf.d/
 6333  2018-03-20 20:50:14 root ll
 6334  2018-03-20 20:50:18 root vim dlp-yappam.conf 
 6335  2018-03-20 19:33:43 root cd /data/
 6336  2018-03-20 19:33:43 root ll
 6337  2018-03-20 19:34:16 root cd ..
 6338  2018-03-20 19:34:17 root ll
 6339  2018-03-20 19:34:21 root cd data/
 6340  2018-03-20 19:34:22 root ll
 6341  2018-03-20 19:34:26 root cd docker/
 6342  2018-03-20 19:34:27 root ll
 6343  2018-03-20 19:34:32 root cd volumes/
 6344  2018-03-20 19:34:33 root ll
 6345  2018-03-20 18:03:30 root which ffmpeg 
 6346  2018-03-20 18:03:37 root ll /usr/bin/ffmpeg
 6347  2018-03-20 18:03:40 root ll /usr/bin/ffmpeg -h
 6348  2018-03-20 18:03:44 root ls
 6349  2018-03-20 18:04:07 root sz  /usr/bin/ffmpeg
 6350  2018-03-20 18:05:55 root ffmpeg 
 6351  2018-03-20 18:06:38 root ffmpeg -v
 6352  2018-03-20 18:06:41 root ffmpeg -version
 6353  2018-03-20 18:06:45 root ffmpeg 
 6354  2018-03-20 20:46:40 root cd ..
 6355  2018-03-20 20:46:40 root ll
 6356  2018-03-20 20:46:41 root cd ..
 6357  2018-03-20 20:46:42 root ll
 6358  2018-03-20 20:46:44 root cd data/
 6359  2018-03-20 20:46:45 root ll
 6360  2018-03-20 20:46:48 root cd nginx/
 6361  2018-03-20 20:46:48 root ll
 6362  2018-03-20 20:46:55 root cd conf.d/
 6363  2018-03-20 20:46:56 root ll
 6364  2018-03-20 20:47:03 root cat dlp-yappam.conf 
 6365  2018-03-20 17:25:42 root tail -f /data/tomcat/logs/catalina.out 
 6366  2018-03-20 17:26:44 root pwd
 6367  2018-03-20 16:36:45 root cd /data/tomcat/webapps/operation/WEB-INF/classes/
 6368  2018-03-20 16:36:49 root cat config.properties 
 6369  2018-03-21 14:50:26 root ll
 6370  2018-03-21 14:50:37 root cd /
 6371  2018-03-21 14:50:39 root ll
 6372  2018-03-21 14:50:59 root cd /data/nginx/
 6373  2018-03-21 14:51:00 root ll
 6374  2018-03-21 14:51:18 root cd conf.d/
 6375  2018-03-21 14:51:20 root ll
 6376  2018-03-21 13:26:11 root ulimit -a
 6377  2018-03-21 13:26:15 root htop
 6378  2018-03-21 14:18:33 root pidof --help
 6379  2018-03-21 14:18:49 root pidof -h
 6380  2018-03-21 14:18:55 root pidstat -h
 6381  2018-03-21 14:19:26 root pidof java
 6382  2018-03-21 14:19:35 root pidof ssh
 6383  2018-03-21 14:19:37 root pidof sshd
 6384  2018-03-21 19:05:18 root docker ps|grep nginx
 6385  2018-03-21 19:05:30 root cd /data/nginx/logs/
 6386  2018-03-21 19:05:30 root ls
 6387  2018-03-21 19:05:31 root ll
 6388  2018-03-21 19:05:32 root pwd
 6389  2018-03-21 19:06:00 root docker inspect 6e35ca856e46
 6390  2018-03-21 19:06:10 root docker ps|grep nginx
 6391  2018-03-21 15:28:55 root virsh list --all
 6392  2018-03-21 15:29:01 root virsh list --all|grep 236
 6393  2018-03-22 10:21:51 root cd /data/nfs/
 6394  2018-03-22 10:21:52 root ls
 6395  2018-03-22 10:21:54 root cd ..
 6396  2018-03-22 10:21:54 root ls
 6397  2018-03-22 10:22:00 root df -h
 6398  2018-03-22 10:22:04 root cd /data/nfs/
 6399  2018-03-22 10:22:04 root ls
 6400  2018-03-22 10:22:06 root cd ..
 6401  2018-03-22 10:22:06 root ls
 6402  2018-03-22 10:22:17 root docker ps
 6403  2018-03-22 10:22:22 root docker ps|grep skoda
 6404  2018-03-22 10:22:35 root docker inspect e2dd244be614
 6405  2018-03-22 10:22:50 root cd /var/lib/rancher/volumes/rancher-nfs/skoda-1-tomcat-operation
 6406  2018-03-22 10:22:51 root ls
 6407  2018-03-22 10:22:54 root cd ..
 6408  2018-03-22 10:22:54 root ls
 6409  2018-03-22 10:23:05 root cd skoda-1-tomcat-operation/
 6410  2018-03-22 10:23:05 root ls
 6411  2018-03-22 10:23:06 root ll
 6412  2018-03-22 10:23:08 root cd ..
 6413  2018-03-22 10:23:25 root ll /apache-tomcat-8.5.23/webapps
 6414  2018-03-22 10:23:39 root  cd /var/lib/rancher/volumes/rancher-nfs/skoda-1-tomcat-operation
 6415  2018-03-22 10:23:40 root ls
 6416  2018-03-22 10:23:42 root cd ..
 6417  2018-03-22 10:23:42 root ls
 6418  2018-03-22 10:24:08 root pwd
 6419  2018-03-22 10:24:11 root cd /data/tomcat/
 6420  2018-03-22 10:24:11 root ls
 6421  2018-03-22 10:24:13 root cd webapps/
 6422  2018-03-22 10:24:14 root ls
 6423  2018-03-22 10:24:16 root cd operation/
 6424  2018-03-22 10:24:17 root ls
 6425  2018-03-22 10:24:28 root cd WEB-INF/classes/com/
 6426  2018-03-22 10:24:28 root ls
 6427  2018-03-22 10:24:32 root pwd
 6428  2018-03-22 10:24:35 root cd /var/lib/rancher/volumes/rancher-nfs/skoda-1-tomcat-operation
 6429  2018-03-22 10:24:36 root ls
 6430  2018-03-22 10:24:37 root ll
 6431  2018-03-22 11:02:13 root df -h
 6432  2018-03-22 11:11:04 root cd /data/
 6433  2018-03-22 11:11:04 root ls
 6434  2018-03-22 11:11:08 root cd nfs-01
 6435  2018-03-22 11:11:09 root ls
 6436  2018-03-22 11:54:59 root showmount -e 192.168.0.234
 6437  2018-03-22 13:48:55 root ifconfig -a|more
 6438  2018-03-22 13:48:59 root cd /data/nfs-data/all_data/default-claim-234-pvc-8059f728-2d8e-11e8-8658-5254005cbaac
 6439  2018-03-22 13:49:05 root cd /data/nfs-data/all_data/
 6440  2018-03-22 13:49:06 root ls
 6441  2018-03-22 13:49:13 root cd /data/nfs/
 6442  2018-03-22 13:49:13 root ls
 6443  2018-03-22 13:49:17 root df -h
 6444  2018-03-22 13:49:34 root ifconfig -a|more
 6445  2018-03-22 10:43:47 root cd /data/
 6446  2018-03-22 10:43:48 root ll
 6447  2018-03-22 10:44:13 root cd /data/nfs/
 6448  2018-03-22 10:44:14 root ll
 6449  2018-03-23 11:23:20 root cd /data/nginx/logs/
 6450  2018-03-23 11:23:21 root ls
 6451  2018-03-23 11:23:31 root tail -100f mediacommons.skoda-1.com.log
 6452  2018-03-23 11:23:47 root ls
 6453  2018-03-23 11:23:57 root grep media * -rl
 6454  2018-03-23 11:24:06 root vim skoda-73.conf 
 6455  2018-03-23 11:24:22 root ping 192.168.0.76 
 6456  2018-03-23 11:27:42 root ls
 6457  2018-03-23 11:27:48 root tail -100f mediacommons.skoda-1.com.log 
 6458  2018-03-23 11:27:59 root ls
 6459  2018-03-23 11:28:05 root vim skoda-73.conf 
 6460  2018-03-23 10:51:16 root yum repolist
 6461  2018-03-23 10:51:22 root yum install php7
 6462  2018-03-23 10:51:37 root vim /etc/yum.repos.d/yum7-new.repo 
 6463  2018-03-23 10:52:08 root yum repolist
 6464  2018-03-23 10:52:11 root yum install php7
 6465  2018-03-23 10:52:13 root yum install php
 6466  2018-03-23 10:59:57 root yum install gd
 6467  2018-03-23 11:00:01 root yum install gd-devel
 6468  2018-03-23 11:46:35 root yum install openssl-devel -y
 6469  2018-03-23 12:22:26 root docker run --rm -it centos
 6470  2018-03-23 13:47:26 root ping registry.yappam.com
 6471  2018-03-23 13:47:50 root htop
 6472  2018-03-23 14:01:04 root iftop
 6473  2018-03-23 14:01:17 root curl -I registry.yappam.com
 6474  2018-03-23 14:01:24 root curl -I https://registry.yappam.com
 6475  2018-03-23 12:24:28 root docker ps
 6476  2018-03-23 12:24:36 root docker stop 7c9f
 6477  2018-03-23 12:27:00 root curl  -h
 6478  2018-03-23 12:29:06 root history 
 6479  2018-03-23 12:29:11 root um install php7
 6480  2018-03-23 12:29:14 root yum install php7
 6481  2018-03-23 12:29:19 root yum install php
 6482  2018-03-23 13:40:54 root docker images |grep centos
 6483  2018-03-23 13:43:25 root docker inspect a8493f5f50f
 6484  2018-03-23 13:44:59 root docker pull centos
 6485  2018-03-23 13:46:41 root docker tag  a8493f5f50f registry.yappam.com/centos/centos7:latest
 6486  2018-03-23 13:46:49 root docker push registry.yappam.com/centos/centos7:latest
 6487  2018-03-23 13:54:42 root vim /etc/resolv.conf 
 6488  2018-03-23 13:54:54 root nslookup registry.yappam.com
 6489  2018-03-23 13:54:59 root docker push registry.yappam.com/centos/centos7:latest
 6490  2018-03-23 13:55:22 root docker inspect registry.yappam.com/centos/centos7:latest
 6491  2018-03-23 14:01:53 root docker push registry.yappam.com/centos/centos7:latest
 6492  2018-03-26 10:17:54 root telnet 127.0.0.1:11211
 6493  2018-03-26 10:20:05 root telnet memcache
 6494  2018-03-26 10:20:17 root telnet memcache 11211
 6495  2018-03-26 17:59:20 root ll
 6496  2018-03-26 17:59:27 root cd docker-nginx/
 6497  2018-03-26 17:59:28 root ll
 6498  2018-03-26 17:59:31 root cd /data/nginx/
 6499  2018-03-26 17:59:32 root ll
 6500  2018-03-26 17:59:33 root cd logs/
 6501  2018-03-26 17:59:34 root ll
 6502  2018-03-26 17:59:54 root vim skoda_mall_files.conf 
 6503  2018-03-26 17:59:32 root cd /data/nginx/logs/
 6504  2018-03-26 17:59:33 root ll
 6505  2018-03-26 17:59:59 root vim skoda_mall_files.conf 
 6506  2018-03-26 18:00:05 root cat  skoda_mall_files.conf 
 6507  2018-03-27 10:21:03 root cd /usr/
 6508  2018-03-27 10:21:05 root ll
 6509  2018-03-28 10:26:25 root virsh list --all
 6510  2018-03-28 10:49:14 root cd /data/nginx/
 6511  2018-03-28 10:49:16 root cd logs/
 6512  2018-03-28 10:49:17 root ll
 6513  2018-03-28 10:49:21 root vim zimg.dlp-yappam.conf 
 6514  2018-03-28 10:49:34 root vim skoda_mall_wxmp.conf 
 6515  2018-03-28 10:49:43 root vim registry.yappam.com.conf 
 6516  2018-03-28 10:50:15 root cp minisite.eskoda.conf nexus.yappam.com
 6517  2018-03-28 10:50:17 root vim nexus.yappam.com 
 6518  2018-03-28 10:50:32 root mv nexus.yappam.com nexus.yappam.com.conf
 6519  2018-03-28 10:50:34 root vim nexus.yappam.com.conf 
 6520  2018-03-28 10:56:42 root htop
 6521  2018-03-28 10:56:45 root iftop
 6522  2018-03-28 14:32:07 root ll
 6523  2018-03-28 14:32:17 root vim dlp-yappam.conf 
 6524  2018-03-28 15:06:40 root iftop
 6525  2018-03-28 15:09:24 root vim nexus.yappam.com.conf 
 6526  2018-03-28 15:10:49 root ifconfig 
 6527  2018-03-28 15:10:58 root ifconfig -i em1
 6528  2018-03-28 15:11:13 root iftop  -i em1
 6529  2018-03-30 11:59:01 root df -h
 6530  2018-03-30 14:56:30 root free -m
 6531  2018-04-01 12:26:29 root ifconfig -a
 6532  2018-03-21 19:01:59 root cd /data/nginx/
 6533  2018-03-21 19:02:00 root ll
 6534  2018-03-21 19:02:01 root cd conf.d/
 6535  2018-03-21 19:02:02 root ll
 6536  2018-03-21 19:02:17 root ci skoda_mall_chat.conf 
 6537  2018-03-21 19:02:21 root vi skoda_mall_chat.conf 
 6538  2018-03-21 19:05:48 root ps -ef |grep nginx
 6539  2018-03-21 19:05:54 root pwd
 6540  2018-03-21 19:05:57 root cd ../
 6541  2018-03-21 19:05:58 root cd logs/
 6542  2018-03-21 19:05:59 root ll
 6543  2018-03-21 19:06:09 root vi skoda_mall_chat.conf 
 6544  2018-03-21 19:06:34 root pwd
 6545  2018-04-01 12:31:59 root init 0
 6546  2018-03-26 10:21:39 root telnet 127.0.0.1 11211
 6547  2018-03-26 10:44:28 root ll
 6548  2018-03-27 21:09:23 root telnet 127.0.0.1 11211
 6549  2018-03-28 11:16:20 root ll
 6550  2018-03-28 11:16:21 root cd da
 6551  2018-03-28 11:16:29 root cd /data/
 6552  2018-03-28 11:16:30 root ll
 6553  2018-03-28 11:16:38 root cd tomcat/
 6554  2018-03-28 11:16:39 root ll
 6555  2018-03-28 11:16:44 root cd springscheduler/
 6556  2018-03-28 11:16:45 root ll
 6557  2018-03-28 15:34:01 root telnet 127.0.0.1 11211
 6558  2018-03-29 15:24:29 root ll
 6559  2018-03-29 15:24:32 root cd skodamall_leads_256/
 6560  2018-03-29 15:24:33 root ll
 6561  2018-03-29 15:24:36 root tail -f nohup.out 
 6562  2018-03-29 16:26:16 root telnet 127.0.0.1 11211
 6563  2018-03-30 17:31:09 root ll
 6564  2018-04-02 09:00:36 root ifconfig -a
 6565  2018-04-02 09:00:56 root ps -ef|grep ran
 6566  2018-04-02 09:00:58 root ps -ef
 6567  2018-04-02 09:40:11 root virsh list --all
 6568  2018-04-02 10:22:45 root htop
 6569  2018-04-02 17:59:40 root cd /data/nginx/
 6570  2018-04-02 17:59:53 root cd logs/
 6571  2018-04-02 17:59:54 root ll
 6572  2018-04-02 18:00:00 root vim skoda_activity.conf 
 6573  2018-04-02 18:00:08 root tail -f logs/skoda-1.access.log 
 6574  2018-04-02 18:00:44 root vim skoda_activity.conf 
 6575  2018-04-02 18:20:44 root tail -f logs/activity.access.log 
 6576  2018-04-02 18:21:05 root vim skoda_activity.conf 
 6577  2018-04-02 17:16:39 root cd /data/tomcat/springscheduler/skodamall_leads_256
 6578  2018-04-02 17:16:39 root ls
 6579  2018-04-02 17:16:54 root ls |grep leads
 6580  2018-04-02 17:17:02 root ls | grep crm
 6581  2018-04-02 17:17:07 root sz yappam-business-leads-3.0.0.jar
 6582  2018-04-02 17:17:17 root sz yappam-business-crm-3.0.0.jar
 6583  2018-04-02 15:31:05 root cd ..
 6584  2018-04-02 15:31:05 root ll
 6585  2018-04-02 15:31:07 root cd data/
 6586  2018-04-02 15:31:08 root ll
 6587  2018-04-02 15:31:09 root cd tomcat/
 6588  2018-04-02 15:31:10 root ll
 6589  2018-04-02 15:31:12 root cd ..
 6590  2018-04-02 15:31:16 root cd tomcat/
 6591  2018-04-02 15:31:17 root ll
 6592  2018-04-02 15:31:19 root cd spring
 6593  2018-04-02 15:31:21 root cd springscheduler/
 6594  2018-04-02 15:31:22 root ll
 6595  2018-04-02 15:31:24 root cd skodamall_leads_256/
 6596  2018-04-02 15:31:25 root ll
 6597  2018-04-02 15:31:28 root tail -f nohup.out 
 6598  2018-04-02 15:34:19 root ps -ef|grep java 
 6599  2018-04-02 15:34:25 root ll
 6600  2018-04-02 15:34:30 root tail -f nohup.out 
 6601  2018-04-02 15:57:03 root ll
 6602  2018-04-02 15:57:06 root cd spring/
 6603  2018-04-02 15:57:07 root ll
 6604  2018-04-02 15:57:09 root cat applicationContext.xml 
 6605  2018-04-02 15:57:20 root ll
 6606  2018-04-02 15:57:22 root cd ..
 6607  2018-04-02 15:57:23 root ll
 6608  2018-04-02 15:57:28 root ps -ef|grep java 
 6609  2018-04-02 15:57:50 root kill -9 33976
 6610  2018-04-02 15:57:55 root ps -ef|grep java 
 6611  2018-04-02 15:59:25 root ./startDoss.sh restart
 6612  2018-04-02 15:59:31 root tail -f nohup.out 
 6613  2018-04-02 16:12:52 root ll
 6614  2018-04-02 16:13:02 root cat jdbc.properties 
 6615  2018-04-02 16:13:18 root tail -1000f nohup.out 
 6616  2018-04-02 17:13:01 root pwd
 6617  2018-04-08 15:28:24 root cd ..
 6618  2018-04-08 15:28:25 root ll
 6619  2018-04-08 15:28:28 root cd data/
 6620  2018-04-08 15:28:28 root ll
 6621  2018-04-08 15:28:39 root cd tomcat/
 6622  2018-04-08 15:28:40 root ll
 6623  2018-04-08 15:28:43 root cd spring
 6624  2018-04-08 15:28:46 root cd springscheduler/
 6625  2018-04-08 15:28:46 root ll
 6626  2018-04-08 15:28:47 root pwd
 6627  2018-04-08 15:28:52 root cd skodamall_leads_256/
 6628  2018-04-08 15:28:53 root ll
 6629  2018-04-08 15:28:54 root pwd
 6630  2018-04-09 15:06:25 root cd /data/tomcat/springscheduler/skodamall_leads_256/
 6631  2018-04-10 10:10:34 root cd /data/nginx/logs/
 6632  2018-04-10 10:10:39 root tail -f logs/ac
 6633  2018-04-10 10:10:44 root tail -f logs/activity.access.log 
 6634  2018-04-10 10:10:58 root tail -f logs/eskoda.access.log 
 6635  2018-04-10 10:11:08 root ll logs/
 6636  2018-04-10 10:11:24 root tail -f logs/behavior.skoda.log 
 6637  2018-04-10 10:11:32 root htop
 6638  2018-04-10 10:29:10 root tail -f logs/behavior.skoda.log 
 6639  2018-04-11 17:59:14 root ll
 6640  2018-04-11 17:59:18 root ps
 6641  2018-04-11 17:59:20 root jps
 6642  2018-04-11 17:59:31 root history