# flatten

Flattens this stream-of-streams into a stream made of the concatenation in
strict order of all the streams.

To import and use `flatten` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.flatten
```

**Signature**

```ts
export declare const flatten: {
  (
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined }
      | undefined
  ): <R, E, R2, E2, A>(self: Stream<Stream<A, E2, R2>, E, R>) => Stream<A, E | E2, R | R2>
  <R, E, R2, E2, A>(
    self: Stream<Stream<A, E2, R2>, E, R>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined }
      | undefined
  ): Stream<A, E | E2, R | R2>
}
```
