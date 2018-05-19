# Create My React App

It started as sort of a joke but then proved to be really useful. This is a simple bash script that sets up a command, `create-my-react-app` to start my personal React-based projects on my computer.

In learning React, I got a bit frustrated with the "just use [create-react-app](https://github.com/facebook/create-react-app)" approach. I prefer to manage [my own working boilerplate for React apps](https://github.com/themeblvd/react-boilerplate), where I'm in control of all the build tools and scripts used. I feel it's really important for building real-world projects that I have a deeper understanding of the tools I'm using like Webpack, Babel, etc.

So for quickly getting started with my personal React-based projects, I created the following simple script, which I placed in my system's `.bash_profile`.

```
create-my-react-app() {
    git clone https://github.com/themeblvd/react-boilerplate.git $1
    cd $1
    rm -rf .git
    npm install
    npm run build
    atom .
}
```

This allows me to run a command like `create-my-react-app my-app` in my terminal, which does the following:

1. Clones my [my react boilerplate](https://github.com/themeblvd/react-boilerplate) into a new directory, `my-app`.
2. Navigates into the newly created `my-app` directory.
3. Deletes the Git files from the clone, as this will be a new project and not connected to the react-boilerplate repository.
4. Installs all of the NPM dependencies.
5. Builds my new project out for the first time.
6. Opens the new `my-app` project in my beloved code editor, [Atom](https://atom.io).
