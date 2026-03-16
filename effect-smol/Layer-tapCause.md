Package: `effect`<br />
Module: `Layer`<br />

## Layer.tapCause

Performs the specified effect if this layer fails.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Layer.tapErrorCause`

**Signature**

```ts
declare const tapCause: { <E, XE extends E, RIn2, E2, X>(f: (cause: Cause.Cause<XE>) => Effect<X, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; <RIn, E, XE extends E, ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (cause: Cause.Cause<XE>) => Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1374)

Since v4.0.0