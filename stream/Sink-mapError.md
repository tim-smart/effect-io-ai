# mapError

Transforms the errors emitted by this sink using `f`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <R, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E2, In, L, Z>
  <R, In, L, Z, E, E2>(self: Sink<R, E, In, L, Z>, f: (error: E) => E2): Sink<R, E2, In, L, Z>
}
```
