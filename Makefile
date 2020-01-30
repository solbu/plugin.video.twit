VERSION=$(shell grep -A2 "addon id" addon.xml|tail -1 |cut -d '"' -f 2)
NAME=$(shell grep "addon id" addon.xml |cut -d '"' -f 2)

zip:
	git archive --prefix=$(NAME)/ HEAD --format=zip -o $(NAME)-$(VERSION).zip
