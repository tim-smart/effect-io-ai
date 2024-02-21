# bindEffect

Binds an effectful value in a `do` scope

To import and use `bindEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.bindEffect
```

**Signature**

```ts
export declare const bindEffect: {
  <N extends string, K, A, E2, R2>(
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect.Effect<A, E2, R2>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined }
      | undefined
  ): <E, R>(self: Stream<K, E, R>) => Stream<MergeRecord<K, { [k in N]: A }>, E2 | E, R2 | R>
  <K, E, R, N extends string, A, E2, R2>(
    self: Stream<K, E, R>,
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect.Effect<A, E2, R2>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined }
      | undefined
  ): Stream<MergeRecord<K, { [k in N]: A }>, E | E2, R | R2>
}
```
