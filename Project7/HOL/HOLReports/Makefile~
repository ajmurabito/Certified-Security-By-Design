# ===================================================
# Makefile for Project6 Theory 
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
	${PDFLATEX} Project6Report
	${MAKEINDEX} Project6Report
	${PDFLATEX} Project6Report
