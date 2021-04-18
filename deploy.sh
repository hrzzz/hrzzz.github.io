#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# Set CNAME for "gh-pages" branch



git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:hrzzz/hrzzz.github.io.git master

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist