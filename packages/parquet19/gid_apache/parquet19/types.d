/// D types for parquet19 library
module gid_apache.parquet19.types;

import gid.core.utils;
import gid_apache.parquet19.c.functions;
import gid_apache.parquet19.c.types;


/**
    The major version.
*/
enum VERSION_MAJOR = 19;

/**
    The micro version.
*/
enum VERSION_MICRO = 1;

/**
    The minor version.
*/
enum VERSION_MINOR = 0;

/**
    The version tag. Normally, it's an empty string. It's "SNAPSHOT"
    for snapshot version.
*/
enum VERSION_TAG = "";
