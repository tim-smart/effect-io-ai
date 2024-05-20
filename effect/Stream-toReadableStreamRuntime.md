# toReadableStreamRuntime

Converts the stream to a `ReadableStream` using the provided runtime.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

To import and use `toReadableStreamRuntime` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.toReadableStreamRuntime
```

**Signature**

```ts
export declare const toReadableStreamRuntime: {
  <XR>(runtime: Runtime<XR>): <A, E, R extends XR>(self: Stream<A, E, R>) => ReadableStream<A>
  <A, E, XR, R extends XR>(self: Stream<A, E, R>, runtime: Runtime<XR>): ReadableStream<A>
}
```
