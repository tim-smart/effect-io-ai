# partition

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in a tupled fashion.

To import and use `partition` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.partition
```

**Signature**

```ts
export declare const partition: {
  <R, E, A, B>(
    f: (a: A) => Effect<R, E, B>,
    options?: { readonly concurrency?: Concurrency; readonly batched?: boolean }
  ): (elements: Iterable<A>) => Effect<R, never, readonly [E[], B[]]>
  <R, E, A, B>(
    elements: Iterable<A>,
    f: (a: A) => Effect<R, E, B>,
    options?: { readonly concurrency?: Concurrency; readonly batched?: boolean }
  ): Effect<R, never, readonly [E[], B[]]>
}
```
