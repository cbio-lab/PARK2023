library(reshape2)

MARKERS <- c("ENV1", "NURR1", "LMX1A", "FOXA2", "OTX2",
      "TUBB3", "MAP2", "TH", "DAT1", "GIRK2")

COU.add.sbs <- COU.add[COU.add$gene_name %in% MARKERS,]
COU.add.sbs <- COU.add.sbs[-c(1,3)]
rownames(COU.add.sbs) <- COU.add.sbs$gene_name
COU.add.sbs <- COU.add.sbs[-1]

COU.add.sbs.t <- as.data.frame(t(COU.add.sbs))
COU.add.sbs.t <- merge(meta_data, cbind(sampleid = rownames(COU.add.sbs.t), COU.add.sbs.t), by = 1)
COU.add.sbs.t <- COU.add.sbs.t[-2]

COU.add.sbs.t <- melt(COU.add.sbs.t, id.vars = c("sampleid", "replicate", "place", "mutation", "condition"))

colnames(COU.add.sbs.t)[c(6:7)] <- c("gene", "exp")

COU.add.sbs.t$exp <- as.numeric(COU.add.sbs.t$exp)

marker_boxplot <- ggplot(COU.add.sbs.t, aes(mutation, log(exp+1), fill = mutation))+
      stat_eye()+
      facet_wrap(~gene)+
      theme_tidybayes()+
      theme(legend.position = "bottom")+
      xlab("Mutation")+
      ylab("log Expression")+
      # stat_compare_means(comparisons = list(c("Health", "LRRK2"), c("Health", "Parkin"), c("Parkin", "LRRK2")), method = "wilcox.test", 
      #                    label = "p.signif")+
      scale_fill_brewer(palette = "Set1")

ggsave(filename = "Documents/github/LRKK2_PARKIN_Msk_Spb/figures/marker_boxplot.pdf", plot = marker_boxplot, device = "pdf", width = 7.5, height = 6.5)

comparisons <- compare_means(exp ~ mutation, data = COU.add.sbs.t, group.by = "gene")

# write.table(comparisons, "Documents/github/LRKK2_PARKIN_Msk_Spb/data/comparisons.markers.tsv", sep = "\t", quote = F, row.names = F)