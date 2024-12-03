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
  <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>
}
```
