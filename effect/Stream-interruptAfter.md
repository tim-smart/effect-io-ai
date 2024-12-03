# interruptAfter

Specialized version of `Stream.interruptWhen` which interrupts the
evaluation of this stream after the given `Duration`.

To import and use `interruptAfter` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.interruptAfter
```

**Signature**

```ts
export declare const interruptAfter: {
  (duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, duration: Duration.DurationInput): Stream<A, E, R>
}
```
