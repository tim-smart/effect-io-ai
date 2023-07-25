# flatMap

Returns a stream made of the concatenation in strict order of all the
streams produced by passing each element of this stream to `f0`

To import and use `flatMap` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, R2, E2, A2>(
    f: (a: A) => Stream<R2, E2, A2>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly bufferSize?: number; readonly switch?: boolean }
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(
    self: Stream<R, E, A>,
    f: (a: A) => Stream<R2, E2, A2>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly bufferSize?: number; readonly switch?: boolean }
  ): Stream<R | R2, E | E2, A2>
}
```
