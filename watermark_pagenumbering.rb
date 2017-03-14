require 'combine_pdf'

watermark_numberings = CombinePDF.load("./watermark_numbering.pdf")

pdf = CombinePDF.load ARGV[0] #{}"./Daddy_Sang_Bass.pdf"



pdf.pages.each_with_index {|page, i| 
	page << watermark_numberings.pages[i]
}

name_of_new_pdf = ARGV[0].dup.gsub 'pdf', 'WaterNum.pdf'

# p name_of_new_pdf

pdf.save name_of_new_pdf