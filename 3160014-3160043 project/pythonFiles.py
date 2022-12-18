#delete dublicate for credits


# importing pandas package
import pandas as pd

# making data frame from csv file
data = pd.read_csv("credits.csv")

# sorting by first name
data.sort_values("id", inplace=True)
print(data)
# dropping ALL duplicte values
data.drop_duplicates(subset="id",
                   keep='first', inplace=True)
# displaying data and make new file
print(data)
data.to_csv (r"credits1.csv", index=False, header=True)

##################################################################################################

#delete dublicate for keywords


# importing pandas package
import pandas as pd

# making data frame from csv file
data = pd.read_csv("keywords.csv")

# sorting by first name
data.sort_values("keywords", inplace=True)
print(data)
# dropping ALL duplicte values
data.drop_duplicates(subset="keywords",
                   keep='first', inplace=True)
# displaying data and make new file
print(data)

data.to_csv (r"keywords1.csv", index=False, header=True)


##################################################################################################

#delete dublicate for links


# importing pandas package
import pandas as pd

# making data frame from csv file
data = pd.read_csv("links.csv")

# sorting by first name
data.sort_values("tmdbId", inplace=True)
print(data)
# dropping ALL duplicte values
data.drop_duplicates(subset="tmdbId",
                   keep='first', inplace=True)
# displaying data and make new file
print(data)

data.to_csv (r"links1.csv", index=False, header=True)



##################################################################################################

#delete dublicate for movies_metadata


# importing pandas package
import pandas as pd

# making data frame from csv file
data = pd.read_csv("movies_metadata.csv")

# sorting by first name
data.sort_values("imdb_id", inplace=True)
print(data)
# dropping ALL duplicte values
data.drop_duplicates(subset="imdb_id",
                   keep='first', inplace=True)
# displaying data and make new file
print(data)

#data.to_csv (r"movies_metadata1.csv", index=False, header=True)





##################################################################################################

#delete dublicate for ratings_small


# importing pandas package
import pandas as pd

# making data frame from csv file
data = pd.read_csv("ratings_small.csv")

# sorting by first name
data.sort_values("timestamp", inplace=True)
print(data)
# dropping ALL duplicte values
data.drop_duplicates(subset="timestamp",
                   keep='first', inplace=True)
# displaying data and make new file
print(data)
data.to_csv (r"ratings_small1.csv", index=False, header=True)




##################################################################################################

#delete moveis that does not exist in other files is not working properly

import pandas as pd

df1 = pd.read_csv('links1.csv')
df2 = pd.read_csv('movies_metadata1.csv')

# create a new column with the count of how many times the row exists
df1['count'] = 0
df2['count'] = 0
df1['count'] = df1.groupby(df1.columns.to_list()[:-1]).cumcount() + 1
df2['count'] = df2.groupby(df2.columns.to_list()[:-1]).cumcount() + 1

print(df1)
print(df2)

df_all = df1.merge(df2, on=df1.columns.to_list(), how='outer', indicator='exists')
print(df_all)
