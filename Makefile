TYPOVER=8.7 9.1 9.2 9.3 9.4 9.5 10.1
DOCKERFILES=$(foreach subdir, $(TYPOVER), $(subdir)/Dockerfile)
DEPENDS=Dockerfile.in Dockerfile9.in Makefile

all: $(DOCKERFILES)

8.7/Dockerfile: Dockerfile.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/8.7/' $< > $@

9.1/Dockerfile: Dockerfile.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/9.1/' $< > $@

9.2/Dockerfile: Dockerfile.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/9.2/' $< > $@

9.3/Dockerfile: Dockerfile.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/9.3/' $< > $@

9.4/Dockerfile: Dockerfile.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/9.4/' $< > $@

9.5/Dockerfile: Dockerfile9.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/9.5/' $< > $@

10.1/Dockerfile: Dockerfile9.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/10.1/' $< > $@

10.2/Dockerfile: Dockerfile9.in
	sed -e 's/PHPVER/7.2/' -e 's/TYPOVER/10.2/' $< > $@
