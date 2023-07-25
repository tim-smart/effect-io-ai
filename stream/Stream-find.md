# find

Finds the first element emitted by this stream that satisfies the provided
predicate.

To import and use `find` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.find
```

**Signature**

```ts
export declare const find: {
  <A, B extends A>(refinement: Refinement<A, B>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <A, X extends A>(predicate: Predicate<X>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A, B extends A>(self: Stream<R, E, A>, refinement: Refinement<A, B>): Stream<R, E, B>
  <R, E, A, X extends A>(self: Stream<R, E, A>, predicate: Predicate<X>): Stream<R, E, A>
}
```
