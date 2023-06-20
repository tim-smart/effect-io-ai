# bufferUnbounded

Allows a faster producer to progress independently of a slower consumer by
buffering chunks into an unbounded queue.

To import and use `bufferUnbounded` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.bufferUnbounded
```

**Signature**

```ts
export declare const bufferUnbounded: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
```
