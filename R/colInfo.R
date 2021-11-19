#' Information of a column in a data frame
#'
#' This function summarizes some statistics 
#' of a column in a data frame.
#'
#' @param df Path to the input data frame
#' @param i The column name or index
#' @return A data frame summarizing the information of the input data frame
#' @export
colInfo <- function(df,i){
  a <- mean(df[,i])
  b <- sd(df[,i])
  c <- median(df[,i])
  info <- data.frame(Item = c("Mean","SD","Median"),
                     Value = c(a,b,c))
  return(info)
}

