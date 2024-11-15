# Function to download data
download_file <- function(raw_dir, data_loc, data_file, new_file_name) {
  if( !dir.exists(raw_dir) ){
    dir.create(path = raw_dir)
  }
  if( !file.exists(str_c(raw_dir, new_file_name)) ){
    download.file(
      url = str_c(data_loc, data_file),
      destfile = str_c(raw_dir, new_file_name))
  }
}