# zipPar

Runs both sinks in parallel on the input and combines the results in a
tuple.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

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
