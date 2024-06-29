# zipWithNext

Zips each element with the next element if present.

To import and use `zipWithNext` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithNext
```

**Signature**

```ts
export declare const zipWithNext: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, Option.Option<A>], E, R>
```
