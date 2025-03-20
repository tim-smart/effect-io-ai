Package: `effect`<br />
Module: `Layer`<br />

## Layer.orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the layer.

**Signature**

```ts
declare const orDie: <A, E, R>(self: Layer<A, E, R>) => Layer<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L539)

Since v2.0.0