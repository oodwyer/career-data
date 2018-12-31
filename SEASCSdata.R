library(plotly)

p <- plot_ly(
  type = "sankey",
  orientation = "h",
  
  node = list(
    label = c("Technology", "Other/Did not respond", "Education Work", "Took Classes", "Financial Services", "Healthcare", "Manufacturing", 
              "Consulting", "Communications", "Energy / Natural Resources", "Continuing Education","Community/Public Health", "Retail/Wholesale","Technology", "Other/Did not respond", "Education Work", "Took Classes", "Financial Services", "Healthcare", "Manufacturing", 
              "Consulting", "Communications", "Energy / Natural Resources", "Continuing Education","Community/Public Health", "Retail/Wholesale","Technology", "Other/Did not respond", "Education Work", "Took Classes", "Financial Services", "Healthcare", "Manufacturing", 
              "Consulting", "Communications", "Energy / Natural Resources", "Continuing Education","Community/Public Health", "Retail/Wholesale","Technology ", "Other/Did not respond ", "Education Work ", "Took Classes ", "Financial Services ", "Healthcare ", "Manufacturing ", 
              "Consulting ", "Communications ", "Energy / Natural Resources ", "Graduate School ","Community/Public Health", "Retail/Wholesale"),
    color = c("blue", "green", "red", "yellow", "orange", "pink", "brown", "white", "blue", "yellow", 
              "purple","yellow", "blue", 
              "blue", "green", "red", "yellow", "orange", "pink", "brown", "white", "blue","yellow", "purple", "yellow", "blue", 
              "blue", "green", "red", "yellow", 
              "orange", "pink", "brown","white", "blue", "yellow", "purple", "yellow", "blue", 
              "blue","green", "red", "yellow","orange","pink","brown","white","blue","yellow","purple",
              "yellow","blue"),
    pad = 5,
    thickness = 20,
    line = list(
      color = "black",
      width = 0.5
    )
  ),
  
  link = list(
    source = c(1,1,0,1,2,
               1,2,0,1,4,
               1,5,4,2,14,14,14,
               14,14,13,19,17,
               17,14,14,13,16,
               15,26,30,32,27,
               27,28,26,32,27,
               30,33,26,30,27,
               32,32,26,30,28,
               28),
    target = c(14,13,14,19,17,
               15,14,13,16,14,17,17,
               19,14,26,27,30,
               28,32,26,32,27,
               30,33,35,30,32,
               32,39,43,45,39,
               45,49,49,49,43,
               39,46,43,46,49,
               39,46,47,49,45,
               39),
    value =  c(141,15,15,10,8,
               8,7,6,5,5,
               4,4,3,1,52,29,44,
               20,12,16,11,11,
               9,8,7,5,3,
               3,46,39,13,12,
               12,12,11,11,10,
               9,8,7,6,6,
               6,5,4,4,4,
               4)
  )
)

#Create a shareable link to your chart
#Set up API credentials: https://plot.ly/r/getting-started
Sys.setenv("plotly_username"="oodwyer")
Sys.setenv("plotly_api_key"="hFRE3yvEDaQxgh6ip2fp")
chart_link = api_create(p, filename="sankey-basic-example")
chart_link
View(p)







