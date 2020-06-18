# ===================================================
# Makefile for Exam2 Theory 
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
	${PDFLATEX} Exam2Report
	${MAKEINDEX} Exam2Report
	${PDFLATEX} Exam2Report
