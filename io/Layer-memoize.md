# memoize

Returns a scoped effect that, if evaluated, will return the lazily computed
result of this layer.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const memoize: <RIn, E, ROut>(
  self: Layer<RIn, E, ROut>
) => Effect.Effect<Scope.Scope, never, Layer<RIn, E, ROut>>
```
