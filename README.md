# basemodels

The purpose of these models is to generate useful database views from raw Zuora data
loaded to a data warehouse by <a href=www.stitchdata.com>Stitch</a>. These views can 
provide a clean base layer for other useful analytics including financial reports. 
Field and column names follow the Stitch loading schema for Zuora which can be viewed in the 
<a href=https://www.stitchdata.com/docs/integrations/saas/zuora#schema>Stitch Zuora Documentation</a>.

Many thanks to <a href=https://www.fishtownanalytics.com/>Fishtown Analytics</a>, the builders these views. 
They work best in conjunction with <a href=https://github.com/fishtown-analytics/dbt>Data Build Tool (DBT)</a>, 
a database transformation utility.
