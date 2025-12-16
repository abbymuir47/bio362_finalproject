This is our final project for BIO 362!

**Question:**
Are protein expressions different in cancers without known driver mutations?
We were motivated to explore what causes cancer, so we wanted to look at cancers where we don't know what causes it.
This paper https://www.nature.com/articles/s41586-020-1969-6 was a starting point for our idea, because "5.3% of PCAWG tumours still had no identifiable driver events" - we were curious what the data for patients with no identifiable driver events would look like. 

**Known Driver Mutations**
We found a list of genes known to have driver mutations of pancreatic cancer using IntOGen. https://www.intogen.org/search?cancer=PAAD. These are included in a tsv file.
1. (optional) - pancreatic.ipynb Filtering the pancreatic cancer set, we found no samples that didn't have a known driver mutation. So, we decided to look at another cancer set. We used IntOGen again, this time with breast cancer. https://www.intogen.org/search?cancer=BRCA. 

2. brca.ipynb - here, we filtered the breast cancer cohort, excluding patients who have known driver mutations. We were left with 23 patients, and from there looked to see if there were any particularly common mutations amongst those 23 patients who lacked a known driver mutation. We did not find any clear outliers. 

**Copy Number Variation**
3. brca.ipynb - Then, we retrieved the copy number variation data and filtered our cohort of 23 patients without driver mutations down, also excluding patients with significant copy number variations. We were left with 11 individuals.  

**Proteomics**
4. brca_proteomics.ipynb - in this file, we retrieve the proteomic data from CPTAC for our 11 breast cancer patients of interest. 

**PCA with proteomics**
5. pca.ipynb - here, we look at the protein levels and scale them so that they are in a standard range in order for us to perform PCA. After reducing to just 2 principal components, we found that the variance ratio was 0.176 -- suggesting that those two contributed to 18% of the variance. We created a scatterplot of the patient data for 2 principal components, and we found no clear correlations within the graph. However, that was for all patients, rather than just our cohort of 11 patients of interest. We hoped to see correlation amongst those 11, but did not. 
Then, we increased the number of principal components to 56, and the variance ratio jumped up from 0.176 to 0.801. We made a dendrogram of all patients to see which see relationships among them, and highlighted the patient ID's for our 11 patients of interest. We did not see clear correlations amongst all 11 of them, but we did find some interesting clusters of 2-3 patients within our cohort of 11.