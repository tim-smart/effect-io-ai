# mapLeftover

Transforms the leftovers emitted by this sink using `f`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const mapLeftover: {
  <L, L2>(f: (leftover: L) => L2): <R, E, In, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, L2, Z>
  <R, E, In, Z, L, L2>(self: Sink<R, E, In, L, Z>, f: (leftover: L) => L2): Sink<R, E, In, L2, Z>
}
```
