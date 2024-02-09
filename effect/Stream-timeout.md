# timeout

Ends the stream if it does not produce a value after the specified duration.

To import and use `timeout` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.timeout
```

**Signature**

```ts
export declare const timeout: {
  (duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, duration: Duration.DurationInput): Stream<A, E, R>
}
```
