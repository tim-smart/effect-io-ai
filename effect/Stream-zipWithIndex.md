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
export declare const zipWithIndex: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, [A, number]>
```
