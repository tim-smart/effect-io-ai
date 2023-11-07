# zipWithPreviousAndNext

Zips each element with both the previous and next element.

To import and use `zipWithPreviousAndNext` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.zipWithPreviousAndNext
```

**Signature**

```ts
export declare const zipWithPreviousAndNext: <R, E, A>(
  self: Stream<R, E, A>
) => Stream<R, E, readonly [Option.Option<A>, A, Option.Option<A>]>
```
