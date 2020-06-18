# ===================================================
# Makefile for Exam4 Theory 
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
	${PDFLATEX} Exam4Report
	${MAKEINDEX} Exam4Report
	${PDFLATEX} Exam4Report
