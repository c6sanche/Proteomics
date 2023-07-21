##Function to extract HEK file protein ID's count and store them in a dataframe in your current working directory
##Read in files= HEK file stored as a variable to call into the function & a running HEK file that has the filename and number of protein IDs stored
hek_ids<-name <- function(hek_file,filename) {
  proteinID_counts<-nrow(hek_file)
  filename<-paste(filename)
  combo_table<-data.frame(proteinID_counts,filename)
  running_file_for_export<-rbind(HEK_running_file,combo_table)
  write.table(running_file_for_export, 'HEK_file_ProteinIDs_over_time.txt', row.names = FALSE, col.names = TRUE, sep = "\t")
  return(running_file_for_export)
}
#hek_file= a txt file of the HEK Proteome Discoverer output "Proteins" File
#filename= the name of the HEK file which has recently been named "AF_projectname_plexnumber"