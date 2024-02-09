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
  <A, R2, E2, K, V>(
    f: (a: A) => Effect.Effect<readonly [K, V], E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): <R, E>(self: Stream<A, E, R>) => GroupBy.GroupBy<R2 | R, E2 | E, K, V>
  <R, E, A, R2, E2, K, V>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<readonly [K, V], E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): GroupBy.GroupBy<R | R2, E | E2, K, V>
}
```
