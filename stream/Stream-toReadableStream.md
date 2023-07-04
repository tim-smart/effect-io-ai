# toReadableStream

Converts the stream to a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

To import and use `toReadableStream` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toReadableStream
```

**Signature**

```ts
export declare const toReadableStream: <E, A>(source: Stream<never, E, A>) => ReadableStream<A>
```
