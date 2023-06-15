# extendScope

Extends the scope of this layer, returning a new layer that when provided
to an effect will not immediately release its associated resources when
that effect completes execution but instead when the scope the resulting
effect depends on is closed.

Part of the `Layer` module from the `@effect/io` package. Also known as `Layer.extendScope`.
