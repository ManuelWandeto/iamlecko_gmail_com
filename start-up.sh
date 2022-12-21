#!/bin/bash

pelias compose pull
pelias elastic start
pelias elastic wait
pelias elastic create
pelias download wof
pelias download osm
pelias download geonames
pelias prepare all
pelias import wof
pelias import osm
pelias import polylines
pelias import geonames
pelias compose up