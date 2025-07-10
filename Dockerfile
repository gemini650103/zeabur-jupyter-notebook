FROM jupyter/datascience-notebook:latest

# 使用 Zeabur 設定的安全 token
ENV JUPYTER_TOKEN=${PASSWORD}

# 暴露 port 8888（可有可無，建議加上）
EXPOSE 8888

# 啟動指令，指定 token
FROM jupyter/datascience-notebook:latest

# 使用 Zeabur 設定的安全 token
ENV JUPYTER_TOKEN=${PASSWORD}

# 暴露 port 8888（可有可無，建議加上）
EXPOSE 8888

# 啟動指令，使用 sh 展開變數
CMD sh -c "start-notebook.sh --NotebookApp.token=$JUPYTER_TOKEN"
