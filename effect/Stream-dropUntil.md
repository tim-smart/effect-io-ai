# dropUntil

Drops all elements of the stream until the specified predicate evaluates to
`true`.

To import and use `dropUntil` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.dropUntil
```

**Signature**

```ts
export declare const dropUntil: {
  <B extends A, A = B>(predicate: Predicate<A>): <R, E>(self: Stream<R, E, B>) => Stream<R, E, B>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>): Stream<R, E, A>
}
```
