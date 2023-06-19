# zipWithPar

Runs both sinks in parallel on the input and combines the results using the
provided function.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const zipWithPar: {
  <R2, E2, In, In2 extends In, L, L2, Z, Z2, Z3>(that: Sink<R2, E2, In2, L2, Z2>, f: (z: Z, z1: Z2) => Z3): <R, E>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In & In2, L | L2, Z3>
  <R, E, R2, E2, In, In2 extends In, L, L2, Z, Z2, Z3>(
    self: Sink<R, E, In, L, Z>,
    that: Sink<R2, E2, In2, L2, Z2>,
    f: (z: Z, z1: Z2) => Z3
  ): Sink<R | R2, E | E2, In & In2, L | L2, Z3>
}
```
