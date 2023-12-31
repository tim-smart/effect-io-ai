# dropWhile

Drops all elements of the stream for as long as the specified predicate
evaluates to `true`.

To import and use `dropWhile` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <B extends A, A = B>(predicate: Predicate<A>): <R, E>(self: Stream<R, E, B>) => Stream<R, E, B>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>): Stream<R, E, A>
}
```
