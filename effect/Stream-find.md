# find

Finds the first element emitted by this stream that satisfies the provided
predicate.

To import and use `find` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.find
```

**Signature**

```ts
export declare const find: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <R, E>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A>(predicate: Predicate<NoInfer<A>>): <R, E>(self: Stream<A, E, R>) => Stream<A, E, R>
  <R, E, A, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<B, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>
}
```
