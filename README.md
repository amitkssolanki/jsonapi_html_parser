# HTML Parser using JSON API

This is a hobby project written using jsonapi-resources gem that using JSON api specification. A demo of project is current hosted on heroku here. This project main includes two main api endpoints.

## Page API
There are two api calls available.
### Create Page
Create a new page, accepts url variable as parameter:

```
bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"pages", "attributes":{"url":"https://www.assetuganda.org/"}}}' https://jsonapihtmlparser.herokuapp.com/pages
```

### List Pages
List all previous pages:

```
bash
curl -i -H "Accept: application/vnd.api+json" "https://jsonapihtmlparser.herokuapp.com/pages"
```

There are other endpoints that can be used to get more details on other resources given below:

##  Link API
### List Links
```
bash
curl -i -H "Accept: application/vnd.api+json" "https://jsonapihtmlparser.herokuapp.com/lists"
```

##  Header Tag API
### List Header Tags
```
bash
curl -i -H "Accept: application/vnd.api+json" "https://jsonapihtmlparser.herokuapp.com/header-tags"
```