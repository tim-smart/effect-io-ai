# drain

Converts this stream to a stream that executes its effects but emits no
elements. Useful for sequencing effects using streams:

To import and use `drain` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.drain
```

**Signature**

```ts
export declare const drain: <A, E, R>(self: Stream<A, E, R>) => Stream<never, E, R>
```
