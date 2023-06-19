# map

Transforms this sink's result.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const map: {
  <Z, Z2>(f: (z: Z) => Z2): <R, E, In, L>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, L, Z2>
  <R, E, In, L, Z, Z2>(self: Sink<R, E, In, L, Z>, f: (z: Z) => Z2): Sink<R, E, In, L, Z2>
}
```
