# race

Runs both sinks in parallel on the input, , returning the result or the
error from the one that finishes first.

To import and use `race` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.race
undefined

**Signature**

```ts
export declare const race: {
  <R1, E1, In1, L1, A1>(
    that: Sink<A1, In1, L1, E1, R1>
  ): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A1 | A, In & In1, L1 | L, E1 | E, R1 | R>
  <A, In, L, E, R, A1, In1, L1, E1, R1>(
    self: Sink<A, In, L, E, R>,
    that: Sink<A1, In1, L1, E1, R1>
  ): Sink<A | A1, In & In1, L | L1, E | E1, R | R1>
}
```
