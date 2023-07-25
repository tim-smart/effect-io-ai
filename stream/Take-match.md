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
  <Z, E, Z2, A, Z3>(options: {
    readonly onEnd: () => Z
    readonly onFailure: (cause: Cause.Cause<E>) => Z2
    readonly onSuccess: (chunk: Chunk.Chunk<A>) => Z3
  }): (self: Take<E, A>) => Z | Z2 | Z3
  <Z, E, Z2, A, Z3>(
    self: Take<E, A>,
    options: {
      readonly onEnd: () => Z
      readonly onFailure: (cause: Cause.Cause<E>) => Z2
      readonly onSuccess: (chunk: Chunk.Chunk<A>) => Z3
    }
  ): Z | Z2 | Z3
}
```
