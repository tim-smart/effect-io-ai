# filter

Filters the elements emitted by this stream using the provided function.

To import and use `filter` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.filter
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <R, E>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A, B extends A>(predicate: Predicate<B>): <R, E>(self: Stream<A, E, R>) => Stream<A, E, R>
  <R, E, A, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<B, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>
}
```
