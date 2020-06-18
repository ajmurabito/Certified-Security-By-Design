# ===================================================
# Makefile for m1Theory 
# ===================================================

PDFLATEX=pdflatex
DVILATEX=latex
MAKEINDEX=makeindex
BIBTEX=bibtex

default: report

clean:
	(rm -f *Report.* HOL*.*)

report:
	hol<documentation.sml
	${PDFLATEX} Project9Report
	${MAKEINDEX} Project9Report
	${PDFLATEX} Project9Report
