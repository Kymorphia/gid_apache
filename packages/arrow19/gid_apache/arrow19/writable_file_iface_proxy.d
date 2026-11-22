/// Module for [WritableFileIfaceProxy] interface proxy object
module gid_apache.arrow19.writable_file_iface_proxy;

import gid.gobject2.object;
import gid_apache.arrow19.writable_file;
import gid_apache.arrow19.writable_file_mixin;

/// Proxy object for [gid_apache.arrow19.writable_file.WritableFile] interface when a GObject has no applicable D binding
class WritableFileIfaceProxy : IfaceProxy, gid_apache.arrow19.writable_file.WritableFile
{
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(cast(void*)ptr, take);
  }

  override TypeInfo_Interface getIface() nothrow
  {
    return typeid(gid_apache.arrow19.writable_file.WritableFile);
  }

  mixin WritableFileT!();
}
