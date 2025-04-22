# 使用多平台基础镜像
FROM eclipse-temurin:8-jre-focal

# 设置默认端口
ENV PORT=9057

# 声明暴露端口（可选）
EXPOSE $PORT

# 复制应用
WORKDIR /app
COPY JrebelBrainsLicenseServerforJava.jar JrebelBrains.jar

# 启动命令（推荐写法）
ENTRYPOINT ["sh", "-c", "java -jar JrebelBrains.jar -p ${PORT}"]