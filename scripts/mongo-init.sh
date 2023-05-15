#!/bin/bash
mongosh <<EOF
  var cfg = {
    "_id": "rs0",
    "version": 1,
    "members": [
      {
        "_id": 0,
        "host": "localhost:27017",
        "priority": 2
      }
    ]
  };
  rs.initiate(cfg);
EOF