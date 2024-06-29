# zipWithPreviousAndNext

Zips each element with both the previous and next element.

To import and use `zipWithPreviousAndNext` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithPreviousAndNext
```

**Signature**

```ts
export declare const zipWithPreviousAndNext: <A, E, R>(
  self: Stream<A, E, R>
) => Stream<[Option.Option<A>, A, Option.Option<A>], E, R>
```
