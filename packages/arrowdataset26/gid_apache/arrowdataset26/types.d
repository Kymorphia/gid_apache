/// D types for arrowdataset26 library
module gid_apache.arrowdataset26.types;

import gid.core.utils;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;


// Enums

/** */
alias SegmentEncoding = GADatasetSegmentEncoding;

/**
    The major version.
*/
enum VERSION_MAJOR = 26;

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
