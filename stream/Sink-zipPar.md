# zipPar

Runs both sinks in parallel on the input and combines the results in a
tuple.

To import and use `zipPar` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.zipPar
```

**Signature**

```ts
export declare const zipPar: {
  <R2, E2, In, In2 extends In, L, L2, Z, Z2>(that: Sink<R2, E2, In2, L2, Z2>): <R, E>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In & In2, L | L2, readonly [Z, Z2]>
  <R, E, R2, E2, In, In2 extends In, L, L2, Z, Z2>(self: Sink<R, E, In, L, Z>, that: Sink<R2, E2, In2, L2, Z2>): Sink<
    R | R2,
    E | E2,
    In & In2,
    L | L2,
    readonly [Z, Z2]
  >
}
```
