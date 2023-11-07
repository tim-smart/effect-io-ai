# dropUntil

Drops all elements of the stream until the specified predicate evaluates to
`true`.

To import and use `dropUntil` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.dropUntil
```

**Signature**

```ts
export declare const dropUntil: {
  <A, X extends A>(predicate: Predicate<X>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A, X extends A>(self: Stream<R, E, A>, predicate: Predicate<X>): Stream<R, E, A>
}
```
