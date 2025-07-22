Package: `effect`<br />
Module: `Layer`<br />

## Layer.zipWith

Combines this layer with the specified layer concurrently, creating a new layer with merged input types and
combined output types using the provided function.

**Signature**

```ts
declare const zipWith: { <B, E2, R2, A, C>(that: Layer<B, E2, R2>, f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>): <E, R>(self: Layer<A, E, R>) => Layer<C, E2 | E, R2 | R>; <A, E, R, B, E2, R2, C>(self: Layer<A, E, R>, that: Layer<B, E2, R2>, f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>): Layer<C, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L947)

Since v2.0.0