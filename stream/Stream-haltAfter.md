# haltAfter

Specialized version of haltWhen which halts the evaluation of this stream
after the given duration.

An element in the process of being pulled will not be interrupted when the
given duration completes. See `interruptAfter` for this behavior.

To import and use `haltAfter` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.haltAfter
```

**Signature**

```ts
export declare const haltAfter: {
  (duration: Duration.DurationInput): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, duration: Duration.DurationInput): Stream<R, E, A>
}
```
