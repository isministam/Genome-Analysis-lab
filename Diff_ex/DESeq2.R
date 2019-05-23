source("https://bioconductor.org/biocLite.R")
biocLite("data.table")

biocLite('DESeq2')
library('DESeq2')
#directory <- list.files(path = "C:/Users/Ismini/Documents/GitHub/Genome-Analysis-lab/Diff_ex/files")
directory <- "C:/Users/Ismini/Documents/GitHub/Genome-Analysis-lab/Diff_ex/files"


sampleFiles <- grep("treated",list.files(directory),value=TRUE)
sampleFiles<- list.files(directory)
sampleFiles
sampleCondition <- sub("(.*treated).*","\\1",sampleFiles)
sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)
sampleTable

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
ddsHTSeq<- ddsHTSeq[-(1:1436), , drop = FALSE]
ddsHTSeq

dds <- DESeq(ddsHTSeq)
dds
res <- results(dds)
res
rld <- rlog(dds, blind=FALSE)




biocLite("pheatmap") 
library("pheatmap") 

mat = assay(rld)[ head(order(res$padj),50), ] # select the top 30 genes with the lowest padj
mat = mat - rowMeans(mat) # Subtract the row means from each value
# Optional, but to make the plot nicer:
df = as.data.frame(colData(rld)[,c("condition")]) # Create a dataframe with a column of the conditioncolnames(df) = "condition" # Rename the column header
rownames(df) = colnames(mat) # add rownames
# and plot the actual heatmap
pheatmap(mat, annotation_col=df)
