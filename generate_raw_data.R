# Generates a realistic "messy" raw survey export to simulate what a real
# GSS/ESS-style CSV export looks like before cleaning.
# Modeled on real survey item wording (ESS "media & trust" module, WVS trust battery).
set.seed(42)

n <- 600

countries <- c("Finland","Finland","Finland","Sweden","Germany","Estonia","Poland",NA)
age_groups <- c("18-24","25-34","35-44","45-54","55-64","65+")
edu_raw <- c("primary","Secondary","secondary ","tertiary","Tertiary","phd", "  ", "NA")

# Frequency of internet/social media use for news (ESS-style item wording)
net_use_raw <- c("Never","Less than once a month","Once a month","Several times a month",
                  "Once a week","Several times a week","Every day","98","99")

# Trust items 0-10 scale (ESS-style), with some out-of-range / missing codes as in raw exports
trust_scale_raw <- c(as.character(0:10), "98", "99", "")

rand_pick <- function(x, n, weights = NULL) sample(x, n, replace = TRUE, prob = weights)

df <- data.frame(
  resp_id = 1:n,
  country = rand_pick(countries, n),
  age_grp = rand_pick(age_groups, n),
  education = rand_pick(edu_raw, n),
  net_use_news = rand_pick(net_use_raw, n, weights = c(0.05,0.05,0.05,0.10,0.10,0.15,0.40,0.05,0.05)),
  trust_parliament = rand_pick(trust_scale_raw, n),
  trust_press = rand_pick(trust_scale_raw, n),
  trust_science = rand_pick(trust_scale_raw, n),
  trust_politicians = rand_pick(trust_scale_raw, n),
  stringsAsFactors = FALSE
)

# introduce a few duplicate rows and stray blank rows, like real exports
df <- rbind(df, df[sample(1:n, 8), ])
write.csv(df, "raw_survey_export.csv", row.names = FALSE, na = "")
cat("Raw file written:", nrow(df), "rows\n")
