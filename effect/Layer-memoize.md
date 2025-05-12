Package: `effect`<br />
Module: `Layer`<br />

## Layer.memoize

Returns a scoped effect that, if evaluated, will return the lazily computed
result of this layer.

**Signature**

```ts
declare const memoize: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<Layer<ROut, E, RIn>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L500)

Since v2.0.0