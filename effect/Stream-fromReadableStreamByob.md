# fromReadableStreamByob

Creates a stream from a `ReadableStreamBYOBReader`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.

To import and use `fromReadableStreamByob` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromReadableStreamByob
```

**Signature**

```ts
export declare const fromReadableStreamByob: {
  <E>(options: {
    readonly evaluate: LazyArg<ReadableStream<Uint8Array>>
    readonly onError: (error: unknown) => E
    readonly bufferSize?: number | undefined
    readonly releaseLockOnEnd?: boolean | undefined
  }): Stream<Uint8Array, E>
  <E>(
    evaluate: LazyArg<ReadableStream<Uint8Array>>,
    onError: (error: unknown) => E,
    allocSize?: number
  ): Stream<Uint8Array, E>
}
```
