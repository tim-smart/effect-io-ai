Package: `effect`<br />
Module: `Layer`<br />

## Layer.buildWithMemoMap

Builds a layer into an `Effect` value, using the specified `MemoMap` to memoize
the layer construction.

**Signature**

```ts
declare const buildWithMemoMap: { (memoMap: MemoMap, scope: Scope.Scope): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<Context.Context<ROut>, E, RIn>; <RIn, E, ROut>(self: Layer<ROut, E, RIn>, memoMap: MemoMap, scope: Scope.Scope): Effect.Effect<Context.Context<ROut>, E, RIn>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1105)

Since v2.0.0