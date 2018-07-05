# basemodels

The purpose of these models is to generate useful database views from raw Zuora data
loaded by <a href=www.stitchdata.com>Stitch</a>. These views can 
provide a clean base layer for useful analyses. Field and column names follow the Stitch 
loading schema for Zuora, which can be viewed in the 
<a href=https://www.stitchdata.com/docs/integrations/saas/zuora#schema>Stitch Zuora Documentation</a>.

To get the most out of these views you should use them in conjunction with <a href=https://github.com/fishtown-analytics/dbt>Data Build Tool (DBT)</a>, a database transformation utility.

Many thanks to <a href=https://www.fishtownanalytics.com/>Fishtown Analytics</a>, the builders these views. 
