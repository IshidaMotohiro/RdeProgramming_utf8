# USAGE:
# source ("Aozora_UTF8.R")
# Aozora("test.txt")

Aozora <- function(x){  
  if(!file.exists (x)) stop ("specify file!")
#  tmp <- 1
   if (oldFile != "NORUBY")  {

    newDir <- paste(dirname (x), "NORUBY", sep = "/")

    if (! file.exists (newDir)) dir.create (newDir)

    newFile <- paste (newDir,  "/", oldFile, "2.txt", sep = "")

    con <- file(x, 'r', encoding = "CP932" )
    outfile <- file(newFile, 'w', encoding = "utf8")
    flag <- 0;
    while (length(input <- readLines(con, n=1, encoding = "CP932")) > 0){
      if (grepl("^底本", input)) break ;
      if (grepl("【入力者注】", input)) break;
      if (grepl("^------", input)) {
        flag <- !flag
      next;
      }
      if (!flag){
        input <- gsub ("［＃[^］]*］", "", input, perl = TRUE)
        input <- gsub ("《[^》]*》", "", input, perl = TRUE)
      input <- gsub ("｜", "", input, perl = TRUE)
        writeLines(input, con=outfile)
#      tmp <- tmp +1
#      if (tmp > 100) stop ("something wrong")
      }
    }
    close(con); close(outfile)
  }
}
