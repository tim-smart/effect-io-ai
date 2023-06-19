# raceBoth

Runs both sinks in parallel on the input, returning the result or the error
from the one that finishes first.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const raceBoth: {
  <R1, E1, In1, L1, Z1>(that: Sink<R1, E1, In1, L1, Z1>): <R, E, In, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R1 | R, E1 | E, In & In1, L1 | L, Either.Either<Z, Z1>>
  <R, E, In, L, Z, R1, E1, In1, L1, Z1>(self: Sink<R, E, In, L, Z>, that: Sink<R1, E1, In1, L1, Z1>): Sink<
    R | R1,
    E | E1,
    In & In1,
    L | L1,
    Either.Either<Z, Z1>
  >
}
```
