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
  (duration: Duration.DurationInput): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, duration: Duration.DurationInput): Stream<R, E, A>
}
```
