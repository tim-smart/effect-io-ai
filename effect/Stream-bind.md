# bind

Binds a value from a stream in a `do` scope

To import and use `bind` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.bind
```

**Signature**

```ts
export declare const bind: {
  <N extends string, K, R2, E2, A>(
    tag: Exclude<N, keyof K>,
    f: (_: K) => Stream<A, E2, R2>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined }
      | undefined
  ): <R, E>(self: Stream<K, E, R>) => Stream<Effect.MergeRecord<K, { [k in N]: A }>, E2 | E, R2 | R>
  <R, E, N extends string, K, R2, E2, A>(
    self: Stream<K, E, R>,
    tag: Exclude<N, keyof K>,
    f: (_: K) => Stream<A, E2, R2>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined }
      | undefined
  ): Stream<Effect.MergeRecord<K, { [k in N]: A }>, E | E2, R | R2>
}
```
