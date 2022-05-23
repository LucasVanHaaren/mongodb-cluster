#!/bin/bash

mongo <<EOF
rs.secondaryOk()
EOF