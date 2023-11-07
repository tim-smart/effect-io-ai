# flatten

Flattens this stream-of-streams into a stream made of the concatenation in
strict order of all the streams.

To import and use `flatten` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.flatten
```

**Signature**

```ts
export declare const flatten: {
  (options?: { readonly concurrency?: number | 'unbounded'; readonly bufferSize?: number }): <R, E, R2, E2, A>(
    self: Stream<R, E, Stream<R2, E2, A>>
  ) => Stream<R | R2, E | E2, A>
  <R, E, R2, E2, A>(
    self: Stream<R, E, Stream<R2, E2, A>>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly bufferSize?: number }
  ): Stream<R | R2, E | E2, A>
}
```
