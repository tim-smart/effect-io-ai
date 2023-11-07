# changes

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using natural equality to determine whether two
elements are equal.

To import and use `changes` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.changes
```

**Signature**

```ts
export declare const changes: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
```
