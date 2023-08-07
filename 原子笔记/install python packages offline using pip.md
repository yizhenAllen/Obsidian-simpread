```shell
mkdir packages
cd packages
touch requirements.txt
mkdir packages_whl
# check the current pip packages
pip list
# grab local packages' name
pip freeze > requirements.txt
# download offline packages' file
pip download -r requirements.txt -d packages_whl
# zip packages
zip -r ../packages.zip .
```
cp packages.zip to target route

```shell
cd to target route
unzip packages.zip
cd packages.zip
pip install --no-index --find-links=packages -r requirements.txt
```

This will install the target packages to current env.