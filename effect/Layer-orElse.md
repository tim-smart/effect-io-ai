Package: `effect`<br />
Module: `Layer`<br />

## Layer.orElse

Executes this layer and returns its output, if it succeeds, but otherwise
executes the specified layer.

**Signature**

```ts
declare const orElse: { <A2, E2, R2>(that: LazyArg<Layer<A2, E2, R2>>): <A, E, R>(self: Layer<A, E, R>) => Layer<A & A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Layer<A, E, R>, that: LazyArg<Layer<A2, E2, R2>>): Layer<A & A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L607)

Since v2.0.0