#' @export

compiler = function(x,blast,total_prob,dict){

  all = filter_avarda(edge = dict,vertex = x %>% select(1))
  df = data.frame(matrix(ncol = 2,nrow = dim(x)[2]))
  colnames(df) = c("virus","filtered")
  for(R in 2:dim(x)[2]){
    x.R = x %>% binary(threshold = 80) %>%  filter(.[[R]] > 0) %>% select(1)
    df[R,1] = colnames(x)[R]
    df[R,2] = filter_avarda(edge = dict,vertex = x.R)
  }
  df$all_f = all
  df = df %>% left_join(total_prob %>% rename(virus = "rowname"),by = "virus") %>% filter(!is.na(virus))

  df = df %>% mutate(pVal_f = mapply(bt, df$filtered, df$all_f,df$V1)) %>% arrange(pVal_f) %>% cbind(dim(x)[1]) %>% cbind(dim(x.R)[1])
  colnames(df) = c("virus","filter_evidence","all_filtered","null_prob","pVal","all_peptides","evidence_peptides")
  return(df)
}

