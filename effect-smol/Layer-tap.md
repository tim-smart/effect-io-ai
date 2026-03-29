Package: `effect`<br />
Module: `Layer`<br />

## Layer.tap

Performs the specified effect if this layer succeeds.

**Signature**

```ts
declare const tap: { <ROut, XR extends ROut, RIn2, E2, X>(f: (context: ServiceMap.ServiceMap<XR>) => Effect<X, E2, RIn2>): <RIn, E>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; <RIn, E, ROut, XR extends ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (context: ServiceMap.ServiceMap<XR>) => Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1347)

Since v4.0.0