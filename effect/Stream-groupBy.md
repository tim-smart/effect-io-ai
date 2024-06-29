# groupBy

More powerful version of `Stream.groupByKey`.

To import and use `groupBy` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.groupBy
```

**Signature**

```ts
export declare const groupBy: {
  <A, K, V, E2, R2>(
    f: (a: A) => Effect.Effect<readonly [K, V], E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): <E, R>(self: Stream<A, E, R>) => GroupBy.GroupBy<K, V, E2 | E, R2 | R>
  <A, E, R, K, V, E2, R2>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<readonly [K, V], E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): GroupBy.GroupBy<K, V, E | E2, R | R2>
}
```
