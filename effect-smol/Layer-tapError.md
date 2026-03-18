Package: `effect`<br />
Module: `Layer`<br />

## Layer.tapError

Performs the specified effect if this layer fails.

**Signature**

```ts
declare const tapError: { <E, XE extends E, RIn2, E2, X>(f: (e: XE) => Effect<X, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; <RIn, E, XE extends E, ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (e: XE) => Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1345)

Since v4.0.0