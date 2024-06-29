# flattenTake

Unwraps `Exit` values and flatten chunks that also signify end-of-stream
by failing with `None`.

To import and use `flattenTake` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.flattenTake
```

**Signature**

```ts
export declare const flattenTake: <A, E2, E, R>(self: Stream<Take.Take<A, E2>, E, R>) => Stream<A, E2 | E, R>
```
