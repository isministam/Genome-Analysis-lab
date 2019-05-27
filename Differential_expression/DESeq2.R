source("https://bioconductor.org/biocLite.R")
biocLite("data.table")
biocLite("pheatmap") 
library("pheatmap") 
biocLite('DESeq')
biocLite('DESeq2')

library('DESeq')
library('DESeq2')



directory <- "C:/Users/Ismini/Documents/GitHub/Genome-Analysis-lab/Differential_expression/files"



sampleFiles<- list.files(directory)
sampleFiles
Files<- c("Serum_1", "Serum_2", "Serum_3","BH_1","BH_2","BH_3")
sampleCondition <- c("Serum_1", "Serum_2", "Serum_3","BH_1","BH_2","BH_3")
sampleTable <- data.frame(sampleName = Files,
                          fileName = sampleFiles,
                          condition = sampleCondition)
sampleTable

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
ddsHTSeq<- ddsHTSeq[-(1:1436), , drop = FALSE]
keep <- rowSums(counts(ddsHTSeq)) >= 10
ddsHTSeq <- ddsHTSeq[keep,]
ddsHTSeq

dds <- DESeq(ddsHTSeq)
res <- results(dds)



#res<- res[which(abs(res$log2FoldChange)>2),]
#res<- res[order(-abs(res$log2FoldChange)),]

summary(res)

rld <- rlog(dds, blind=FALSE)


# DESeq2Report(dds, project = "", intgroup, colors = NULL, res = NULL,
#              nBest = 500, nBestFeatures = 20, customCode = NULL,
#              outdir = "DESeq2Exploration", output = "DESeq2Exploration",
#              browse = interactive(), device = "png", template = NULL,
#              searchURL = "http://www.ncbi.nlm.nih.gov/gene/?term=", theme = NULL,
#              digits = 2, ...)


mat =assay(rld)[ tail(order(res$log2FoldChange), 15),] 
mat = mat - rowMeans(mat) 
pheatmap(mat)



