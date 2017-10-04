mygrid <- data.frame(
  code = c("Shetland Islands", "Orkney Islands", "Eilean Siar", "Aberdeenshire", "Moray", "Highland",
         "Aberdeen City", "Argyll & Bute", "Perth & Kinross", "Angus", "Dundee City", "Fife",
         "Clackmannanshire", "Stirling", "East Dunbartonshire", "West Dunbartonshire", "Falkirk",
         "North Ayrshire", "Inverclyde", "Glasgow City", "North Lanarkshire", "West Lothian",
         "Edinburgh, City of", "East Lothian", "South Ayrshire", "South Lanarkshire", "East Renfrewshireý",
         "Renfrewshire", "Midlothian", "East Ayrshire", "Scottish Borders", "Dumfries & Galloway"),
  row = c(1, 2, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 11, 11, 12),
  col = c(6, 5, 2, 8, 7, 4, 8, 3, 5, 7, 6, 6, 5, 4, 3, 2, 4, 1, 2, 3, 4, 5, 6, 7, 1, 4, 3, 2, 6, 2, 6, 2)
)
geofacet::grid_preview(mygrid)
