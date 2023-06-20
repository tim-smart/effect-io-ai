# find

Returns the first element that satisfies the effectful predicate.

To import and use `find` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.find
```

**Signature**

```ts
export declare const find: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, Option.Option<A>>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, Option.Option<A>>
}
```
