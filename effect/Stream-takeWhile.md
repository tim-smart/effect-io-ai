# takeWhile

Takes all elements of the stream for as long as the specified predicate
evaluates to `true`.

To import and use `takeWhile` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: Refinement<A, B>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <B extends A, A = B>(predicate: Predicate<A>): <R, E>(self: Stream<R, E, B>) => Stream<R, E, B>
  <R, E, A, B extends A>(self: Stream<R, E, A>, refinement: Refinement<A, B>): Stream<R, E, B>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>): Stream<R, E, A>
}
```
