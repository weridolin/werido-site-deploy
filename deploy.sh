# echo "开始更新前端代码" 因为服务器内存不足，打包会卡死，直接在GitHub action打包后再推送过去
# rm -rf werido-site-front
# git clone git@github.com:weridolin/werido-site-front.git
# cd ../werido-site-front
# git pull
# echo "开始打前代码"
# rm -rf node_module
# rm package-lock.json
# npm cache clear --force
# npm install
# npm run build_home
echo "拉取后端代码"
cd ../werido-site-backend
git pull
echo  "开始运行docker-compose"
cd ../werido-site-deploy
git pull
docker-compose up  -d --build
