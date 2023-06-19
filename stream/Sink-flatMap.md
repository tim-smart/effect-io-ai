# flatMap

Runs this sink until it yields a result, then uses that result to create
another sink from the provided function which will continue to run until it
yields a result.

This function essentially runs sinks in sequence.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const flatMap: {
  <R1, E1, In, In1 extends In, L, L1, Z, Z1>(f: (z: Z) => Sink<R1, E1, In1, L1, Z1>): <R, E>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R1 | R, E1 | E, In & In1, L | L1, Z1>
  <R, E, R1, E1, In, In1 extends In, L, L1, Z, Z1>(
    self: Sink<R, E, In, L, Z>,
    f: (z: Z) => Sink<R1, E1, In1, L1, Z1>
  ): Sink<R | R1, E | E1, In & In1, L | L1, Z1>
}
```
