#!/bin/bash
# 先执行 run.sh，在另一个终端里执行本脚本进行测试

obj_url="127.0.0.1:8778/objects/test"

echo "404 Example"
curl -v ${obj_url}
echo "-------"
echo "Put sample object"
curl -v ${obj_url} -XPUT -d"this is a test object"
echo "-------"
echo "Get sample object"
curl -v ${obj_url} 