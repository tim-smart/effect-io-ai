# toReadableStreamEffect

Converts the stream to a `Effect<ReadableStream>`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

To import and use `toReadableStreamEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.toReadableStreamEffect
```

**Signature**

```ts
export declare const toReadableStreamEffect: {
  <A>(options?: {
    readonly strategy?: QueuingStrategy<A> | undefined
  }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<ReadableStream<A>, never, R>
  <A, E, R>(
    self: Stream<A, E, R>,
    options?: { readonly strategy?: QueuingStrategy<A> | undefined }
  ): Effect.Effect<ReadableStream<A>, never, R>
}
```
