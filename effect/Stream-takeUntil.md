# takeUntil

Takes all elements of the stream until the specified predicate evaluates to
`true`.

To import and use `takeUntil` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeUntil
```

**Signature**

```ts
export declare const takeUntil: {
  <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>
}
```
