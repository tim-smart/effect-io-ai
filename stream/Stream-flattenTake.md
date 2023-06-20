# flattenTake

Unwraps `Exit` values and flatten chunks that also signify end-of-stream
by failing with `None`.

To import and use `flattenTake` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenTake
```

**Signature**

```ts
export declare const flattenTake: <R, E, E2, A>(self: Stream<R, E, Take.Take<E2, A>>) => Stream<R, E | E2, A>
```
