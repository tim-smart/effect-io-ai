# timeoutFail

Fails the stream with given error if it does not produce a value after d
duration.

To import and use `timeoutFail` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.timeoutFail
```

**Signature**

```ts
export declare const timeoutFail: {
  <E2>(error: LazyArg<E2>, duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>
  <A, E, R, E2>(self: Stream<A, E, R>, error: LazyArg<E2>, duration: Duration.DurationInput): Stream<A, E | E2, R>
}
```
