# build

Builds a layer into a scoped value.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const build: <RIn, E, ROut>(
  self: Layer<RIn, E, ROut>
) => Effect.Effect<Scope.Scope | RIn, E, Context.Context<ROut>>
```
