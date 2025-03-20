Package: `effect`<br />
Module: `Layer`<br />

## Layer.flatMap

Constructs a layer dynamically based on the output of this layer.

**Signature**

```ts
declare const flatMap: { <A, A2, E2, R2>(f: (context: Context.Context<A>) => Layer<A2, E2, R2>): <E, R>(self: Layer<A, E, R>) => Layer<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Layer<A, E, R>, f: (context: Context.Context<A>) => Layer<A2, E2, R2>): Layer<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L367)

Since v2.0.0