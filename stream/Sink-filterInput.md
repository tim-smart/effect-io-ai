# filterInput

Filters the sink's input with the given predicate.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const filterInput: {
  <In, In1 extends In, In2 extends In1>(f: Refinement<In1, In2>): <R, E, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In2, L, Z>
  <In, In1 extends In>(f: Predicate<In1>): <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In1, L, Z>
}
```
