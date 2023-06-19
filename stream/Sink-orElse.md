# orElse

Switch to another sink in case of failure

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const orElse: {
  <R2, E2, In2, L2, Z2>(that: LazyArg<Sink<R2, E2, In2, L2, Z2>>): <R, E, In, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In & In2, L2 | L, Z2 | Z>
  <R, E, In, L, Z, R2, E2, In2, L2, Z2>(self: Sink<R, E, In, L, Z>, that: LazyArg<Sink<R2, E2, In2, L2, Z2>>): Sink<
    R | R2,
    E | E2,
    In & In2,
    L | L2,
    Z | Z2
  >
}
```
