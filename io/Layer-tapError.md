# tapError

Performs the specified effect if this layer fails.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const tapError: {
  <E, RIn2, E2, X>(f: (e: E) => Effect.Effect<RIn2, E2, X>): <RIn, ROut>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E | E2, ROut>
  <RIn, E, ROut, RIn2, E2, X>(self: Layer<RIn, E, ROut>, f: (e: E) => Effect.Effect<RIn2, E2, X>): Layer<
    RIn | RIn2,
    E | E2,
    ROut
  >
}
```
