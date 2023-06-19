# mapEffect

Effectfully transforms this sink's result.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const mapEffect: {
  <Z, R2, E2, Z2>(f: (z: Z) => Effect.Effect<R2, E2, Z2>): <R, E, In, L>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In, L, Z2>
  <R, E, In, L, Z, R2, E2, Z2>(self: Sink<R, E, In, L, Z>, f: (z: Z) => Effect.Effect<R2, E2, Z2>): Sink<
    R | R2,
    E | E2,
    In,
    L,
    Z2
  >
}
```
