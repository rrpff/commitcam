# commitcam

Basically lolcommits but in a 6 line shell script, for macOS only

## Usage

Will take a picture of you every time you create a commit and save it as `~/.commitcam/$PROJECT_NAME/$SHA.jpg`

## Installation

1. Install dependencies

```
$ brew install imagesnap
```

2. Download commitcam, e.g.

```
$ sudo curl -o /usr/local/bin/commitcam https://raw.githubusercontent.com/rrpff/commitcam/refs/heads/main/commitcam
```

3. Set permissions

```
$ sudo chmod +x /usr/local/bin/commitcam
```

4. Create global git templates

```
$ mkdir -p ~/.git-templates/hooks
$ git config --global init.templatedir '~/.git-templates'
```

5. Set `~/.git-templates/hooks/post-commit` to the following:

```
#!/bin/sh
commitcam &
```

6. More permissions!

```
$ chmod +x ~/.git-templates/hooks/post-commit
```

6. Run `git init` in any existing repositories to enable

7. Smile!
