#use ExtUtils::MakeMaker;

#ExtUtils::MakeMaker::WriteEmptyMakefile();	# Needs _56

$distname = 'Tk-OS2-1.00';

{
  open MF, '> Makefile' or die "open Makefile for write: $!";
  print MF <<"EOQ";
DISTNAME = $distname
EOQ
  print MF <<'EOP';

all:

clean:

install:

makemakerdflt:

test:

dist:
	rm -rf $(DISTNAME) $(DISTNAME).zip
	mkdir $(DISTNAME)
	sh -c "cp `cat MANIFEST` $(DISTNAME)"
	chmod a-w $(DISTNAME)/*
	zip -r $(DISTNAME).zip $(DISTNAME)

EOP
  close MF or die "close Makefile for write: $!";
}
