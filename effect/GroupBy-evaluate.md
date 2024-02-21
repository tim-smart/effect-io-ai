# evaluate

Run the function across all groups, collecting the results in an
arbitrary order.

To import and use `evaluate` from the "GroupBy" module:

```ts
import * as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.evaluate
```

**Signature**

```ts
export declare const evaluate: {
  <K, V, E, A, E2, R2>(
    f: (key: K, stream: Stream.Stream<V, E, never>) => Stream.Stream<A, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): <R>(self: GroupBy<K, V, E, R>) => Stream.Stream<A, E | E2, R2 | R>
  <K, V, E, R, A, E2, R2>(
    self: GroupBy<K, V, E, R>,
    f: (key: K, stream: Stream.Stream<V, E, never>) => Stream.Stream<A, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): Stream.Stream<A, E | E2, R | R2>
}
```
