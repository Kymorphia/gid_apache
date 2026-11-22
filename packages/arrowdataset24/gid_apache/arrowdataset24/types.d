/// D types for arrowdataset24 library
module gid_apache.arrowdataset24.types;

import gid.core.utils;
import gid_apache.arrowdataset24.c.functions;
import gid_apache.arrowdataset24.c.types;


// Enums

/** */
alias SegmentEncoding = GADatasetSegmentEncoding;

/**
    The major version.
*/
enum VERSION_MAJOR = 24;

/**
    The micro version.
*/
enum VERSION_MICRO = 0;

/**
    The minor version.
*/
enum VERSION_MINOR = 0;

/**
    The version tag. Normally, it's an empty string. It's "SNAPSHOT"
    for snapshot version.
*/
enum VERSION_TAG = "";
