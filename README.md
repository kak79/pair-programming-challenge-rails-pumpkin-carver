# Pair Programming Challenge - Rails Pumpkin Carver

Farms have these attributes:

```
name => the name of the farm
img_url => a link to an image for this farm
zip_code => a location for the farm
description => a description of the farm
```

Use validations to enforce these rules:

### Name

Make sure the name is present, unique, and that it includes the word "Farm".

### Zip Code

The zip code location needs to be present, be numerical, and be exactly 5 characters in length.

### Img_URL

Make sure that only validly formatted web-links are accepted. Feel free to search online for regex to make this work (the regex is less important than the validation itself).

### Description

The description needs to be between 20 and 100 characters long.
