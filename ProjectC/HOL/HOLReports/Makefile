# ===================================================
# Makefile for Exam3 Theory 
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
	${PDFLATEX} Exam3Report
	${MAKEINDEX} Exam3Report
	${PDFLATEX} Exam3Report
