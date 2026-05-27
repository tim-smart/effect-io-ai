Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.fromReadable

Converts a Node readable stream into an Effect `Stream`, reading chunks with
an optional chunk size, mapping stream errors with `onError`, and destroying
the readable on completion unless `closeOnDone` is `false`.

**Signature**

```ts
declare const fromReadable: <A = Uint8Array<ArrayBufferLike>, E = Cause.UnknownError>(options: { readonly evaluate: LazyArg<Readable | NodeJS.ReadableStream>; readonly onError?: (error: unknown) => E; readonly chunkSize?: number | undefined; readonly bufferSize?: number | undefined; readonly closeOnDone?: boolean | undefined; }) => Stream.Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L55)

Since v4.0.0