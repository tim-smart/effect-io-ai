Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromReadableStreamByob

Creates a stream from a `ReadableStreamBYOBReader`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.

**Signature**

```ts
declare const fromReadableStreamByob: { <E>(options: { readonly evaluate: LazyArg<ReadableStream<Uint8Array>>; readonly onError: (error: unknown) => E; readonly bufferSize?: number | undefined; readonly releaseLockOnEnd?: boolean | undefined; }): Stream<Uint8Array, E>; <E>(evaluate: LazyArg<ReadableStream<Uint8Array>>, onError: (error: unknown) => E, allocSize?: number): Stream<Uint8Array, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2191)

Since v2.0.0