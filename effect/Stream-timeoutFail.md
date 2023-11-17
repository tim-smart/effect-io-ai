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
  <E2>(error: LazyArg<E2>, duration: Duration.DurationInput): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E2 | E, A>
  <R, E, A, E2>(self: Stream<R, E, A>, error: LazyArg<E2>, duration: Duration.DurationInput): Stream<R, E | E2, A>
}
```
