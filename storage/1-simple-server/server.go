package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	// 注册 http 处理函数，
	http.HandleFunc("/objects/", Handler)
	// 绑定端口
	log.Fatal(http.ListenAndServe(os.Getenv("LISTEN_ADDRESS"), nil))
}
