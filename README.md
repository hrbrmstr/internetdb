
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![R-CMD-check](https://github.com/hrbrmstr/internetdb/workflows/R-CMD-check/badge.svg)](https://github.com/hrbrmstr/internetdb/actions?query=workflow%3AR-CMD-check)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/internetdb.svg?branch=master)](https://travis-ci.org/hrbrmstr/internetdb)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/internetdb/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/internetdb)
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-4.0.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# internetdb

Fast IP Lookups for Open Ports and Vulnerabilities

## Description

Shodan <https://shodan.io/> scans the internet for hosts and services
and maintains a few APIs into that data. One API is the InternetDB
<https://internetdb.shodan.io/>, which allows for free querying of open
ports and vulnerabilities. Tools are provided to query this servce.

## What’s Inside The Tin

The following functions are implemented:

-   `query_internetdb`: Query Shodan’s InternetDB

## Installation

``` r
remotes::install_github("hrbrmstr/internetdb")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(internetdb)

# current version
packageVersion("internetdb")
## [1] '0.1.0'
```

``` r
query_internetdb("36.94.222.209")
##              ip          ports hostnames     tags
## 1 36.94.222.209 80, 3306, 9999      NULL database
##                                                                                                                                                                                cpes
## 1 cpe:/a:apache:http_server:2.2.22, cpe:/a:openssl:openssl:0.9.8o, cpe:/a:php:php:5.3.14 ZendServer, cpe:/a:getbootstrap:bootstrap, cpe:/a:jquery:jquery, cpe:/a:mysql:mysql:5.6.20
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          vulns
## 1 CVE-2011-3210, CVE-2016-8612, CVE-2014-3508, CVE-2014-3510, CVE-2012-3499, CVE-2012-0884, CVE-2012-1165, CVE-2013-1862, CVE-2011-4577, CVE-2012-4558, CVE-2014-3566, CVE-2017-7668, CVE-2012-2687, CVE-2013-0169, CVE-2014-0076, CVE-2018-1312, CVE-2013-1896, CVE-2013-5704, CVE-2014-0195, CVE-2013-0166, CVE-2011-0014, CVE-2014-3470, CVE-2014-0231, CVE-2011-4108, CVE-2006-7250, CVE-2010-3864, CVE-2017-3167, CVE-2011-1945, CVE-2010-5298, CVE-2010-4180, CVE-2010-4252, CVE-2014-0224, CVE-2017-3169, CVE-2014-0221, CVE-2014-3505, CVE-2012-0027, CVE-2014-0098, CVE-2013-2249, CVE-2012-2110, CVE-2011-4619, CVE-2011-1473, CVE-2012-2333, CVE-2017-7679, CVE-2013-6438, CVE-2011-4576, CVE-2011-4109, CVE-2017-3735, CVE-2014-3506, CVE-2016-4975, CVE-2014-3507
```

## internetdb Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| YAML |        2 | 0.17 |  35 | 0.25 |          10 | 0.13 |        2 | 0.02 |
| R    |        3 | 0.25 |  25 | 0.18 |          11 | 0.14 |       20 | 0.19 |
| Rmd  |        1 | 0.08 |  10 | 0.07 |          17 | 0.22 |       32 | 0.30 |
| SUM  |        6 | 0.50 |  70 | 0.50 |          38 | 0.50 |       54 | 0.50 |

clock Package Metrics for internetdb

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
