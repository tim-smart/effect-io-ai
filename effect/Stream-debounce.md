# debounce

Delays the emission of values by holding new values for a set duration. If
no new values arrive during that time the value is emitted, however if a
new value is received during the holding period the previous value is
discarded and the process is repeated with the new value.

This operator is useful if you have a stream of "bursty" events which
eventually settle down and you only need the final event of the burst. For
example, a search engine may only want to initiate a search after a user
has paused typing so as to not prematurely recommend results.

To import and use `debounce` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.debounce
```

**Signature**

```ts
export declare const debounce: {
  (duration: Duration.DurationInput): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, duration: Duration.DurationInput): Stream<R, E, A>
}
```
