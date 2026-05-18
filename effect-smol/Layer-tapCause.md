Package: `effect`<br />
Module: `Layer`<br />

## Layer.tapCause

Performs the specified effect when this layer fails with any cause.

**Details**
The callback receives the layer's `Cause`, so it can inspect typed errors,
defects, and interruption information. If the callback succeeds, the layer
fails again with the original cause; if the callback fails, that failure is
added to the layer's error type.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Layer.tapErrorCause`

**Signature**

```ts
declare const tapCause: { <E, XE extends E, RIn2, E2, X>(f: (cause: Cause.Cause<XE>) => Effect<X, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; <RIn, E, XE extends E, ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (cause: Cause.Cause<XE>) => Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1521)

Since v4.0.0