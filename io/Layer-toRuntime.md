# toRuntime

Converts a layer that requires no services into a scoped runtime, which can
be used to execute effects.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const toRuntime: <RIn, E, ROut>(
  self: Layer<RIn, E, ROut>
) => Effect.Effect<Scope.Scope | RIn, E, Runtime.Runtime<ROut>>
```
