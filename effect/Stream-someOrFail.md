# someOrFail

Extracts the optional value, or fails with the given error 'e'.

To import and use `someOrFail` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.someOrFail
```

**Signature**

```ts
export declare const someOrFail: {
  <E2>(error: LazyArg<E2>): <R, E, A>(self: Stream<R, E, Option.Option<A>>) => Stream<R, E2 | E, A>
  <R, E, A, E2>(self: Stream<R, E, Option.Option<A>>, error: LazyArg<E2>): Stream<R, E | E2, A>
}
```
