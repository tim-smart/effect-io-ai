# zipWithNext

Zips each element with the next element if present.

To import and use `zipWithNext` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.zipWithNext
```

**Signature**

```ts
export declare const zipWithNext: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, readonly [A, Option.Option<A>]>
```
