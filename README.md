# aliyun-ddns
启动时需要配置环境变量
```shell
docker run \
    --name aliyun-ddns \
    --net=host \
    -d --restart=always \
    -e zone=cn-shenzhen \
    -e domain="your domain" \
    -e sub_domain="your sub_domain" \
    -e access_key_id="your access_key_id" \
    -e access_key_secret="your access_key_secret" \
    registry.cn-shenzhen.aliyuncs.com/yxleung/aliyun-ddns:0.0.1 
```