install:
	ln --symbolic -T $(PWD)/bash_profile $(HOME)/.bash_profile
	ln --symbolic -T $(PWD)/bashrc $(HOME)/.bashrc
	ln --symbolic -T $(PWD)/logout $(HOME)/.bash_logout
	ln --symbolic -T $(PWD)/profile $(HOME)/.profile
