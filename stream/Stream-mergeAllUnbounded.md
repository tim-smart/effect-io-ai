# mergeAllUnbounded

Like `Stream.mergeAll`, but runs all streams concurrently.

To import and use `mergeAllUnbounded` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeAllUnbounded
```

**Signature**

```ts
export declare const mergeAllUnbounded: (
  bufferSize?: number
) => <R, E, A>(...streams: Stream<R, E, A>[]) => Stream<R, E, A>
```
