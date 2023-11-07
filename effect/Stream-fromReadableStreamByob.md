# fromReadableStreamByob

Creates a stream from a `ReadableStreamBYOBReader`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.

To import and use `fromReadableStreamByob` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.fromReadableStreamByob
```

**Signature**

```ts
export declare const fromReadableStreamByob: <E>(
  evaluate: LazyArg<ReadableStream<Uint8Array>>,
  onError: (error: unknown) => E,
  allocSize?: number
) => Stream<never, E, Uint8Array>
```
