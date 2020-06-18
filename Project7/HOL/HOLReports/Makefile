# ===================================================
# Makefile for Project7 Theory 
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
	${PDFLATEX} Project7Report
	${MAKEINDEX} Project7Report
	${PDFLATEX} Project7Report
