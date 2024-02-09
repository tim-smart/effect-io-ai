# zipWithIndex

Zips this stream together with the index of elements.

To import and use `zipWithIndex` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithIndex
```

**Signature**

```ts
export declare const zipWithIndex: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, number], E, R>
```
