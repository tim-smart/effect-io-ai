# validateAll

Feeds elements of type `A` to `f` and accumulates all errors in error
channel or successes in success channel.

This combinator is lossy meaning that if there are errors all successes
will be lost. To retain all information please use `partition`.

To import and use `validateAll` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateAll
```

**Signature**

```ts
export declare const validateAll: {
  <R, E, A, B>(
    f: (a: A, i: number) => Effect<R, E, B>,
    options?: { readonly concurrency?: Concurrency; readonly batched?: boolean; readonly discard?: false }
  ): (elements: Iterable<A>) => Effect<R, E[], B[]>
  <R, E, A, B>(
    f: (a: A, i: number) => Effect<R, E, B>,
    options: { readonly concurrency?: Concurrency; readonly batched?: boolean; readonly discard: true }
  ): (elements: Iterable<A>) => Effect<R, E[], void>
  <R, E, A, B>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<R, E, B>,
    options?: { readonly concurrency?: Concurrency; readonly batched?: boolean; readonly discard?: false }
  ): Effect<R, E[], B[]>
  <R, E, A, B>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<R, E, B>,
    options: { readonly concurrency?: Concurrency; readonly batched?: boolean; readonly discard: true }
  ): Effect<R, E[], void>
}
```
