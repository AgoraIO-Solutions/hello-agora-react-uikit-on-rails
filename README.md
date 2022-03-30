# Hello Agora UIKit Rails

This README documents, how to get a demo app up and running. The demo app is targeted at showing how Agora can be integrated into a rails 7 react app. The initial commit was created by running the following command.

```bash
rails new <appname> -j=esbuild
```

### Up and Running:

1) Create a `.env` file with the following content

```
APP_ID=<your Agora app id, that does not require tokens>
```

2) Excecute `bundle install` from the CLI

3) Execute `npm i` from the CLI

4) Ensure that `yarn` is installed

5) Run `./bin/dev` in order to run the app locally

6) Navigate to http://localhost:3000

