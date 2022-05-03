# Headless coding VNC

Headless coding image, derived from <https://github.com/accetto/headless-coding-g3> vscode / firefox  
with Java (OpenJDK 17), maven and IntelliJ.

## build 

```sh
docker build -t headless-coding .
```

## run

### Give it a try

```sh
docker run -p 8080:6901 headless-coding
```

And go to <http://localhost:8080/> in your favorite browser

The default password is `headless`

### Use it in real-life

The port `6901` corresponds to NoVNC (http client)  
In addition or replacement, you can expose port `5901` to access directly over VNC protocol (with a VNC client)

You'll probably need volumes to persist your projects, maybe a finer network tuning, etc.

See the [whole README of the base image](https://github.com/accetto/headless-coding-g3/blob/master/docker/xfce-nodejs/README.md) for these concerns.



