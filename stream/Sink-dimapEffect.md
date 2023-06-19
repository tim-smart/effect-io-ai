# dimapEffect

Effectfully transforms both inputs and result of this sink using the
provided functions.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const dimapEffect: {
  <In0, R2, E2, In, Z, R3, E3, Z2>(
    f: (input: In0) => Effect.Effect<R2, E2, In>,
    g: (z: Z) => Effect.Effect<R3, E3, Z2>
  ): <R, E, L>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R3 | R, E2 | E3 | E, In0, L, Z2>
  <R, E, L, In0, R2, E2, In, Z, R3, E3, Z2>(
    self: Sink<R, E, In, L, Z>,
    f: (input: In0) => Effect.Effect<R2, E2, In>,
    g: (z: Z) => Effect.Effect<R3, E3, Z2>
  ): Sink<R | R2 | R3, E | E2 | E3, In0, L, Z2>
}
```
