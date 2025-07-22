Package: `effect`<br />
Module: `Layer`<br />

## Layer.matchCause

Feeds the error or output services of this layer into the input of either
the specified `failure` or `success` layers, resulting in a new layer with
the inputs of this layer, and the error or outputs of the specified layer.

**Signature**

```ts
declare const matchCause: { <E, A2, E2, R2, A, A3, E3, R3>(options: { readonly onFailure: (cause: Cause.Cause<E>) => Layer<A2, E2, R2>; readonly onSuccess: (context: Context.Context<A>) => Layer<A3, E3, R3>; }): <R>(self: Layer<A, E, R>) => Layer<A2 & A3, E2 | E3, R2 | R3 | R>; <A, E, R, A2, E2, R2, A3, E3, R3>(self: Layer<A, E, R>, options: { readonly onFailure: (cause: Cause.Cause<E>) => Layer<A2, E2, R2>; readonly onSuccess: (context: Context.Context<A>) => Layer<A3, E3, R3>; }): Layer<A2 & A3, E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L528)

Since v2.0.0