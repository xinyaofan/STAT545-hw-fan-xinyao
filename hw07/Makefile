all: report.html 

p1.png p2.png gapminder_dat.tsv:
	Rscript explor_analyse.R
	
gap_coefs.tsv worst_best_countries.tsv: gapminder_dat.tsv 
	Rscript stat_analyses.R

p_Asia.png p_Africa.png p_Europe.png p_Amercias.png p_Oceania.png: gapminder_dat.tsv 
	Rscript Graph.R
	
	
report.html: report.Rmd gap_coefs.tsv worst_best_countries.tsv p1.png p2.png p_Asia.png p_Africa.png p_Europe.png p_Amercias.png p_Oceania.png
	Rscript -e 'rmarkdown::render("$<")'
	
clean:
	rm -rf *.tsv *.png  *.html 