.gitignore: .gitignore-manual
	curl -sL https://www.toptal.com/developers/gitignore/api/LaTex,R,Julia,VisualStudioCode > .gitignore
	cat .gitignore-manual >> .gitignore	
