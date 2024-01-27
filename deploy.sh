echo "Switching to branch master"
git checkout master

echo "building app..."
npm run build

echo "deploying files to server..."
scp -r build/* ubuntu@192.168.1.25:/var/www/todos

echo "Done!"