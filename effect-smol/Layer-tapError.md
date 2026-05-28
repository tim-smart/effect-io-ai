Package: `effect`<br />
Module: `Layer`<br />

## Layer.tapError

Performs the specified effect if this layer fails.

**When to use**

Use to run logging, metrics, or other effects when layer construction fails
while preserving the original typed error.

**Details**

The callback receives the typed error. If the callback succeeds, the layer
still fails with the original error; if the callback fails, that failure is
added to the layer's error type.

**See**

- `tap` for running an effect when layer construction succeeds
- `tapCause` for inspecting the full failure cause, including defects and interruption

**Signature**

```ts
declare const tapError: { <E, XE extends E, RIn2, E2, X>(f: (e: XE) => Effect<X, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; <RIn, E, XE extends E, ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (e: XE) => Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | Exclude<RIn2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1716)

Since v2.0.0