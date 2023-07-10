# filter

Filters the collection using the specified effectful predicate.

To import and use `filter` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filter
```

**Signature**

```ts
export declare const filter: {
  <A, R, E>(
    f: (a: A, i: number) => Effect<R, E, boolean>,
    options?: {
      readonly concurrency?: Concurrency
      readonly batchRequests?: boolean | 'inherit'
      readonly negate?: boolean
    }
  ): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(
    elements: Iterable<A>,
    f: (a: A, i: number) => Effect<R, E, boolean>,
    options?: {
      readonly concurrency?: Concurrency
      readonly batchRequests?: boolean | 'inherit'
      readonly negate?: boolean
    }
  ): Effect<R, E, A[]>
}
```
