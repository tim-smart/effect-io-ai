# timeout

Ends the stream if it does not produce a value after the specified duration.

To import and use `timeout` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.timeout
```

**Signature**

```ts
export declare const timeout: {
  (duration: Duration.Duration): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, duration: Duration.Duration): Stream<R, E, A>
}
```
