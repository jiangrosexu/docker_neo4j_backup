#! /bin/bash


# docker run -idt --name neo4jbackup -v /home/jiangxu/neo4j/

# :/data neo4j /bin/bash  

a=`date +%Y%m%d%H%M%S`

docker stop jiang-neo4j
docker run -it --rm -v /home/jiangxu/neo4j/data:/data --name neo4jbackup neo4j neo4j-admin dump --database=neo4j --to="/data/$a.dump"
docker start jiang-neo4j
cp /data/home/jiangxu/neo4j/data/$a.dump /data/home/jiangxu/neo4jdocu/  










# # neo4j-admin dump --database=neo4j --to=20220104.dump
# docker run -it --name neo4jbackup -v 宿主机原neo4j的data路径:/data neo4j /bin/bash
# #进入到了neo4jbackup容器内 
# exit
# #exit出来
# docker stop 原docker
# docker start neo4jbackup
# docker exec -it neo4jbackup /bin/bash
# #进入到了neo4jbackup容器内 
# neo4j-admin dump --database=neo4j --to=20220104.dump
# exit
# #exit出来
# docker cp neo4jbackup:/var/lib/neo4j/20220104.dump /data/home/jiangxu/neo4jdocu/
# #复制出来，neo4jdocu文件夹得提前创建好




# docker run -it --rm -v /home/jiangxu/neo4j/data:/data -v /home/jiangxu/backup4:/backup \
# --name qiwen_SoftwareGraph_backup neo4j neo4j-admin dump --database=neo4j \
# --to=20220108.dump