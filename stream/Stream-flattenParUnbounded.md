# flattenParUnbounded

Like `Stream.flattenPar`, but executes all streams concurrently.

To import and use `flattenParUnbounded` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenParUnbounded
```

**Signature**

```ts
export declare const flattenParUnbounded: <R, E, R2, E2, A>(
  self: Stream<R, E, Stream<R2, E2, A>>
) => Stream<R | R2, E | E2, A>
```
