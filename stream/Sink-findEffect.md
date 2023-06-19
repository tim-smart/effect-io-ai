# findEffect

Creates a sink that produces values until one verifies the predicate `f`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const findEffect: {
  <Z, R2, E2>(f: (z: Z) => Effect.Effect<R2, E2, boolean>): <R, E, In, L extends In>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In, L, Option.Option<Z>>
  <R, E, In, L extends In, Z, R2, E2>(self: Sink<R, E, In, L, Z>, f: (z: Z) => Effect.Effect<R2, E2, boolean>): Sink<
    R | R2,
    E | E2,
    In,
    L,
    Option.Option<Z>
  >
}
```
