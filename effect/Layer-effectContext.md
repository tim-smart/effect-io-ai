Package: `effect`<br />
Module: `Layer`<br />

## Layer.effectContext

Constructs a layer from the specified effect, which must return one or more
services.

**Signature**

```ts
declare const effectContext: <A, E, R>(effect: Effect.Effect<Context.Context<A>, E, R>) => Layer<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L308)

Since v2.0.0