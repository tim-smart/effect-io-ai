# changes

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using natural equality to determine whether two
elements are equal.

To import and use `changes` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.changes
```

**Signature**

```ts
export declare const changes: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```
