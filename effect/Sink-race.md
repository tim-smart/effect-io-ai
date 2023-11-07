# race

Runs both sinks in parallel on the input, , returning the result or the
error from the one that finishes first.

To import and use `race` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.race
```

**Signature**

```ts
export declare const race: {
  <R1, E1, In1, L1, Z1>(that: Sink<R1, E1, In1, L1, Z1>): <R, E, In, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R1 | R, E1 | E, In & In1, L1 | L, Z1 | Z>
  <R, E, In, L, Z, R1, E1, In1, L1, Z1>(self: Sink<R, E, In, L, Z>, that: Sink<R1, E1, In1, L1, Z1>): Sink<
    R | R1,
    E | E1,
    In & In1,
    L | L1,
    Z | Z1
  >
}
```
