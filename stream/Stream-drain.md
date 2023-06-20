# drain

Converts this stream to a stream that executes its effects but emits no
elements. Useful for sequencing effects using streams:

To import and use `drain` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.drain
```

**Signature**

```ts
export declare const drain: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, never>
```
