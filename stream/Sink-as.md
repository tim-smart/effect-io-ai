# as

Replaces this sink's result with the provided value.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const as: (<Z2>(z: Z2) => <R, E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, L, Z2>) &
  (<R, E, In, L, Z, Z2>(self: Sink<R, E, In, L, Z>, z: Z2) => Sink<R, E, In, L, Z2>)
```
