# passthrough

Returns a new layer that produces the outputs of this layer but also
passes through the inputs.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const passthrough: <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Layer<RIn, E, RIn | ROut>
```
