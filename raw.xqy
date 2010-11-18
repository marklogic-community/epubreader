xquery version "1.0-ml";

declare default function namespace "http://www.w3.org/2005/xpath-functions";

declare variable $url as xs:string := xdmp:get-request-field("url");

let $doc := doc($url)
return
  xdmp:xslt-invoke("/modules/fixlinks.xsl", $doc)
