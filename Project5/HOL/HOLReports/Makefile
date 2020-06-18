# ===================================================
# Makefile Project 5 
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
	${PDFLATEX} project5Report
	${MAKEINDEX} project5Report
	${PDFLATEX} project5Report

