# tap

Performs the specified effect if this layer succeeds.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const tap: {
  <ROut, RIn2, E2, X>(f: (context: Context.Context<ROut>) => Effect.Effect<RIn2, E2, X>): <RIn, E>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E2 | E, ROut>
  <RIn, E, ROut, RIn2, E2, X>(
    self: Layer<RIn, E, ROut>,
    f: (context: Context.Context<ROut>) => Effect.Effect<RIn2, E2, X>
  ): Layer<RIn | RIn2, E | E2, ROut>
}
```
