# raceBothCapacity

Like `raceBoth`, but with a configurable `capacity` parameter.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const raceBothCapacity: {
  <R1, E1, In1, L1, Z1>(that: Sink<R1, E1, In1, L1, Z1>, capacity: number): <R, E, In, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R1 | R, E1 | E, In & In1, L1 | L, Either.Either<Z, Z1>>
  <R, E, In, L, Z, R1, E1, In1, L1, Z1>(
    self: Sink<R, E, In, L, Z>,
    that: Sink<R1, E1, In1, L1, Z1>,
    capacity: number
  ): Sink<R | R1, E | E1, In & In1, L | L1, Either.Either<Z, Z1>>
}
```
