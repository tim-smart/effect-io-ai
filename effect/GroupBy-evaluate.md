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
  <K, E, V, R2, E2, A>(
    f: (key: K, stream: Stream.Stream<V, E, never>) => Stream.Stream<A, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): <R>(self: GroupBy<R, E, K, V>) => Stream.Stream<A, E | E2, R2 | R>
  <R, K, E, V, R2, E2, A>(
    self: GroupBy<R, E, K, V>,
    f: (key: K, stream: Stream.Stream<V, E, never>) => Stream.Stream<A, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): Stream.Stream<A, E | E2, R | R2>
}
```
