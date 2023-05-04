branch=main
git clone -b $branch https://rimuru-01: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@github.com/rimuru-01/ultroid-termux
cp ultroid/.env /root/ultroid-termux/.env
cd /root/ultroid-termux
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
