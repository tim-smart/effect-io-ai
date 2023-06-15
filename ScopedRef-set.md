# set

Sets the value of this reference to the specified resourcefully-created
value. Any resources associated with the old value will be released.

This method will not return until either the reference is successfully
changed to the new value, with old resources released, or until the attempt
to acquire a new value fails.

Part of the `ScopedRef` module from the `@effect/io` package. Also known as `ScopedRef.set`.
