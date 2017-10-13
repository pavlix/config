all: configure
configure:
	ansible-playbook -vvv -i hosts playbook.yml --ask-become-pass
