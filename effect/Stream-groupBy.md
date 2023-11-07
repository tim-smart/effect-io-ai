# groupBy

More powerful version of `Stream.groupByKey`.

To import and use `groupBy` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.groupBy
```

**Signature**

```ts
export declare const groupBy: {
  <A, R2, E2, K, V>(f: (a: A) => Effect.Effect<R2, E2, readonly [K, V]>, options?: { readonly bufferSize?: number }): <
    R,
    E
  >(
    self: Stream<R, E, A>
  ) => GroupBy.GroupBy<R2 | R, E2 | E, K, V>
  <R, E, A, R2, E2, K, V>(
    self: Stream<R, E, A>,
    f: (a: A) => Effect.Effect<R2, E2, readonly [K, V]>,
    options?: { readonly bufferSize?: number }
  ): GroupBy.GroupBy<R | R2, E | E2, K, V>
}
```
