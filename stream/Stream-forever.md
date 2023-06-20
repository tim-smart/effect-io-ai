# forever

Repeats this stream forever.

To import and use `forever` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.forever
```

**Signature**

```ts
export declare const forever: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
```
