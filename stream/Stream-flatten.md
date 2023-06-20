# flatten

Flattens this stream-of-streams into a stream made of the concatenation in
strict order of all the streams.

To import and use `flatten` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flatten
```

**Signature**

```ts
export declare const flatten: <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>) => Stream<R | R2, E | E2, A>
```
