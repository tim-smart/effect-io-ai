# buildWithScope

Builds a layer into an `Effect` value. Any resources associated with this
layer will be released when the specified scope is closed unless their scope
has been extended. This allows building layers where the lifetime of some of
the services output by the layer exceed the lifetime of the effect the
layer is provided to.

Part of the `Layer` module from the `@effect/io` package. Also known as `Layer.buildWithScope`.
