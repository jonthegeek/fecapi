library(httptest2)

# Avoid long paths.
set_redactor(function(x) {
  gsub_response(x, paste0("https://api.open.fec.gov/v1", "/"), "", fixed = TRUE)
})
