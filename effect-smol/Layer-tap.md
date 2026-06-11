Package: `effect`<br />
Module: `Layer`<br />

## Layer.tap

Performs the specified effect if this layer succeeds.

**When to use**

Use to run an effectful observation after a layer has been built
successfully, such as logging or metrics, without changing the services the
layer provides.

**Details**

The callback receives the services produced by this layer. Its result is
discarded, and the original layer output is preserved.

**See**

- `tapError` for running an effect when layer construction fails with a typed error
- `tapCause` for running an effect when layer construction fails with any cause

**Signature**

```ts
declare const tap: { <ROut, XR extends ROut, RIn2, E2, X>(f: (context: Context.Context<XR>) => Effect<X, E2, RIn2>): <RIn, E>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; <RIn, E, ROut, XR extends ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (context: Context.Context<XR>) => Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1637)

Since v2.0.0