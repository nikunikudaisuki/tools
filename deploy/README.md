# deploy scripts

## usage
### prepare environment

```
git clone https://github.com/nikunikudaisuki/tools
cd tools/
cp setenv.sh.sample setenv.sh
vim setenv.sh # fill in variables in `setenv.sh`
```
separate `deploy/deploy_body.sh` for each 3 server if you change role of them.

### Run deploy
```
cd deploy
./deploy.sh
```
