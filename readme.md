# MyGit

Simple bash script for cloning a repository under a specific git user.

## Usage

#### Export Your Git User

'export MY_GIT=https://github.com/myUser/'

_Or you could use an "definitive" solution echoing into your environment._

'echo MY_GIT="https://github.com/myUser/" >> /etc/environment'

#### PS:
If you don't have the specific MY_GIT variable in your environment this won't work.

#### Example:
- Export my github user: 'magalhaes-andre'
- Clone this repository using this script: 'bash myGit.bash myGit'
- And see the magic 0.0
