# fromReadableStream

Creates a stream from a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

To import and use `fromReadableStream` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromReadableStream
```

**Signature**

```ts
export declare const fromReadableStream: <A, E>(
  evaluate: LazyArg<ReadableStream<A>>,
  onError: (error: unknown) => E
) => Stream<A, E>
```
