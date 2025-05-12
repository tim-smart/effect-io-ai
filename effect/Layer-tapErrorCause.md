Package: `effect`<br />
Module: `Layer`<br />

## Layer.tapErrorCause

Performs the specified effect if this layer fails.

**Signature**

```ts
declare const tapErrorCause: { <E, XE extends E, RIn2, E2, X>(f: (cause: Cause.Cause<XE>) => Effect.Effect<X, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn2 | RIn>; <RIn, E, XE extends E, ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (cause: Cause.Cause<XE>) => Effect.Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L796)

Since v2.0.0