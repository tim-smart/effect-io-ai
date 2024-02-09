# someOrElse

Extracts the optional value, or returns the given 'default'.

To import and use `someOrElse` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.someOrElse
```

**Signature**

```ts
export declare const someOrElse: {
  <A2>(fallback: LazyArg<A2>): <A, E, R>(self: Stream<Option.Option<A>, E, R>) => Stream<A2 | A, E, R>
  <R, E, A, A2>(self: Stream<Option.Option<A>, E, R>, fallback: LazyArg<A2>): Stream<A | A2, E, R>
}
```
