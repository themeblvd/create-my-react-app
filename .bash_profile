# create-my-react-app
create-my-react-app() {
    git clone https://github.com/themeblvd/react-boilerplate.git $1
    cd $1
    rm -rf .git
    npm install
    npm run build
    atom .
}
