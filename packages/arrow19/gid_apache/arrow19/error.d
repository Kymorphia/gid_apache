/// Module for [Error] enum namespace
module gid_apache.arrow19.error;

import gid.core.utils;
import gid.glib2.error;
import gid.glib2.types;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.types;

/// Namespace for [Error] enum
struct Error
{
  alias Enum = gid_apache.arrow19.types.Error; ///

  /** */
  static gid.glib2.types.Quark quark() nothrow
  {
    gid.glib2.types.Quark _retval;
    _retval = garrow_error_quark();
    return _retval;
  }
}

class ArrowException : ErrorWrap
{
  this(GError* err, Flag!"Take" take) nothrow
  {
    super(err, take);
  }

  this(Code code, string msg) nothrow
  {
    super(gid_apache.arrow19.error.Error.quark, cast(int)code, msg);
  }

  alias Code = gid_apache.arrow19.types.Error;
}
