# template
Project template

## Untemplate

Easiest way:

```bash
gh repo clone go-faster/template
```

```bash
export NAME=your-project-name
cp -r template "${NAME}"
cd "${NAME}"

rm -rf .git
git init
git commit -m "init" --allow-empty

./template.sh
git add .
git commit -m "feat: init"

gh repo create --source . --public "go-faster/${NAME}"
git push -u origin main
```
