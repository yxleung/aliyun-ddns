mvn install -f pom.xml -Dmaven.test.skip=true
docker build -t registry.cn-shenzhen.aliyuncs.com/yxleung/aliyun-ddns:0.0.1 .
docker push registry.cn-shenzhen.aliyuncs.com/yxleung/aliyun-ddns:0.0.1 