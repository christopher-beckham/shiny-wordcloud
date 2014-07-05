schemes = c("BrBG","PiYG","PRGn","PuOr","RdBu","RdGy",
            "RdYlBu","RdYlGn","Spectral","Accent","Dark2",
            "Paired","Pastel1","Pastel2","Set1","Set2","Set3",
            "Blues","BuGn","BuPu","GnBu","Greens","Greys","Oranges",
            "OrRd","PuBu","PuBuGn","PuRd","Purples","RdPu","Reds","YlGn",
            "YlGnBu","YlOrBr","YlOrRd")

scheme.input = list()
for(i in 1:length(schemes)) {
  scheme.input[ schemes[i] ] = i
}