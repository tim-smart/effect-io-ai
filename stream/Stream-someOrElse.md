# someOrElse

Extracts the optional value, or returns the given 'default'.

To import and use `someOrElse` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.someOrElse
```

**Signature**

```ts
export declare const someOrElse: {
  <A2>(fallback: LazyArg<A2>): <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, E, A2 | A>
  <R, E, A, A2>(self: Stream<R, E, Option.Option<A>>, fallback: LazyArg<A2>): Stream<R, E, A | A2>
}
```
