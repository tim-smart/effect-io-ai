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
  <E2>(error: LazyArg<E2>): <A, E, R>(self: Stream<Option.Option<A>, E, R>) => Stream<A, E2 | E, R>
  <R, E, A, E2>(self: Stream<Option.Option<A>, E, R>, error: LazyArg<E2>): Stream<A, E | E2, R>
}
```
