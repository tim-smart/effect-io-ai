# timeoutTo

Switches the stream if it does not produce a value after the specified
duration.

To import and use `timeoutTo` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.timeoutTo
```

**Signature**

```ts
export declare const timeoutTo: {
  <R2, E2, A2>(
    duration: Duration.DurationInput,
    that: Stream<A2, E2, R2>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    duration: Duration.DurationInput,
    that: Stream<A2, E2, R2>
  ): Stream<A | A2, E | E2, R | R2>
}
```
