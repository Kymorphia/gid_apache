/// Module for [ClientOptions] class
module gid_apache.arrowflight23.client_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight23.c.functions;
import gid_apache.arrowflight23.c.types;
import gid_apache.arrowflight23.types;

/** */
class ClientOptions : gid.gobject2.object.ObjectWrap
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())gaflight_client_options_get_type != &gidSymbolNotFound ? gaflight_client_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightClientOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ClientOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight23.client_options.ClientOptions]
      Returns: New builder object
  */
  static ClientOptionsGidBuilder builder() nothrow
  {
    return new ClientOptionsGidBuilder;
  }

  /**
      Get `certificateChain` property.
      Returns: The client certificate to use if using Mutual TLS.
  */
  @property string certificateChain() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("certificate-chain");
  }

  /**
      Set `certificateChain` property.
      Params:
        propval = The client certificate to use if using Mutual TLS.
  */
  @property void certificateChain(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("certificate-chain", propval);
  }

  /**
      Get `disableServerVerification` property.
      Returns: Whether use TLS without validating the server certificate. Use
        with caution.
  */
  @property bool disableServerVerification() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("disable-server-verification");
  }

  /**
      Set `disableServerVerification` property.
      Params:
        propval = Whether use TLS without validating the server certificate. Use
          with caution.
  */
  @property void disableServerVerification(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("disable-server-verification", propval);
  }

  /**
      Get `overrideHostName` property.
      Returns: Override the host name checked by TLS. Use with caution.
  */
  @property string overrideHostName() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("override-host-name");
  }

  /**
      Set `overrideHostName` property.
      Params:
        propval = Override the host name checked by TLS. Use with caution.
  */
  @property void overrideHostName(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("override-host-name", propval);
  }

  /**
      Get `privateKey` property.
      Returns: The private key associated with the client certificate for Mutual
        TLS.
  */
  @property string privateKey() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("private-key");
  }

  /**
      Set `privateKey` property.
      Params:
        propval = The private key associated with the client certificate for Mutual
          TLS.
  */
  @property void privateKey(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("private-key", propval);
  }

  /**
      Get `tlsRootCertificates` property.
      Returns: Root certificates to use for validating server certificates.
  */
  @property string tlsRootCertificates() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("tls-root-certificates");
  }

  /**
      Set `tlsRootCertificates` property.
      Params:
        propval = Root certificates to use for validating server certificates.
  */
  @property void tlsRootCertificates(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("tls-root-certificates", propval);
  }

  /**
      Get `writeSizeLimitBytes` property.
      Returns: A soft limit on the number of bytes to write in a single batch
        when sending Arrow data to a server.
        
        Used to help limit server memory consumption. Only enabled if
        positive. When enabled, @GARROW_ERROR_IO may be yielded.
  */
  @property long writeSizeLimitBytes() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("write-size-limit-bytes");
  }

  /**
      Set `writeSizeLimitBytes` property.
      Params:
        propval = A soft limit on the number of bytes to write in a single batch
          when sending Arrow data to a server.
          
          Used to help limit server memory consumption. Only enabled if
          positive. When enabled, @GARROW_ERROR_IO may be yielded.
  */
  @property void writeSizeLimitBytes(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("write-size-limit-bytes", propval);
  }

  /** */
  this() nothrow
  {
    GAFlightClientOptions* _cretval;
    _cretval = gaflight_client_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight23.client_options.ClientOptions]
class ClientOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `certificateChain` property.
      Params:
        propval = The client certificate to use if using Mutual TLS.
      Returns: Builder instance for fluent chaining
  */
  T certificateChain(string propval) nothrow
  {
    return setProperty("certificate-chain", propval);
  }

  /**
      Set `disableServerVerification` property.
      Params:
        propval = Whether use TLS without validating the server certificate. Use
          with caution.
      Returns: Builder instance for fluent chaining
  */
  T disableServerVerification(bool propval) nothrow
  {
    return setProperty("disable-server-verification", propval);
  }

  /**
      Set `overrideHostName` property.
      Params:
        propval = Override the host name checked by TLS. Use with caution.
      Returns: Builder instance for fluent chaining
  */
  T overrideHostName(string propval) nothrow
  {
    return setProperty("override-host-name", propval);
  }

  /**
      Set `privateKey` property.
      Params:
        propval = The private key associated with the client certificate for Mutual
          TLS.
      Returns: Builder instance for fluent chaining
  */
  T privateKey(string propval) nothrow
  {
    return setProperty("private-key", propval);
  }

  /**
      Set `tlsRootCertificates` property.
      Params:
        propval = Root certificates to use for validating server certificates.
      Returns: Builder instance for fluent chaining
  */
  T tlsRootCertificates(string propval) nothrow
  {
    return setProperty("tls-root-certificates", propval);
  }

  /**
      Set `writeSizeLimitBytes` property.
      Params:
        propval = A soft limit on the number of bytes to write in a single batch
          when sending Arrow data to a server.
          
          Used to help limit server memory consumption. Only enabled if
          positive. When enabled, @GARROW_ERROR_IO may be yielded.
      Returns: Builder instance for fluent chaining
  */
  T writeSizeLimitBytes(long propval) nothrow
  {
    return setProperty("write-size-limit-bytes", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight23.client_options.ClientOptions]
final class ClientOptionsGidBuilder : ClientOptionsGidBuilderImpl!ClientOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ClientOptions build() nothrow
  {
    return new ClientOptions(cast(void*)createGObject(ClientOptions._getGType), Yes.Take);
  }
}
