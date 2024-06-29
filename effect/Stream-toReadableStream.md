# toReadableStream

Converts the stream to a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

To import and use `toReadableStream` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.toReadableStream
```

**Signature**

```ts
export declare const toReadableStream: {
  <A>(
    options?: { readonly strategy?: QueuingStrategy<A> | undefined } | undefined
  ): <E>(self: Stream<A, E, never>) => ReadableStream<A>
  <A, E>(
    self: Stream<A, E, never>,
    options?: { readonly strategy?: QueuingStrategy<A> | undefined } | undefined
  ): ReadableStream<A>
}
```
