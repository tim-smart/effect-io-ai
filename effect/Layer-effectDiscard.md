Package: `effect`<br />
Module: `Layer`<br />

## Layer.effectDiscard

Constructs a layer from the specified effect, discarding its output.

**Signature**

```ts
declare const effectDiscard: <X, E, R>(effect: Effect.Effect<X, E, R>) => Layer<never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L299)

Since v2.0.0