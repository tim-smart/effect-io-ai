# match

Folds over the failure cause, success value and end-of-stream marker to
yield a value.

Part of the `Take` module, imported from `@effect/stream/Take`.

**Signature**

```ts
export declare const match: {
  <Z, E, Z2, A, Z3>(onEnd: () => Z, onError: (cause: Cause.Cause<E>) => Z2, onSuccess: (chunk: Chunk.Chunk<A>) => Z3): (
    self: Take<E, A>
  ) => Z | Z2 | Z3
  <Z, E, Z2, A, Z3>(
    self: Take<E, A>,
    onEnd: () => Z,
    onError: (cause: Cause.Cause<E>) => Z2,
    onSuccess: (chunk: Chunk.Chunk<A>) => Z3
  ): Z | Z2 | Z3
}
```
