# match

Folds over the failure cause, success value and end-of-stream marker to
yield a value.

To import and use `match` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.match
```

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
