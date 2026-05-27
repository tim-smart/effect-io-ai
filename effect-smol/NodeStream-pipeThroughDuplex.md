Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.pipeThroughDuplex

Pipes an Effect `Stream` through a Node `Duplex`, writing the stream's
chunks to the duplex and emitting chunks read back from it.

**Signature**

```ts
declare const pipeThroughDuplex: { <B = Uint8Array<ArrayBufferLike>, E2 = Cause.UnknownError>(options: { readonly evaluate: LazyArg<Duplex>; readonly onError?: (error: unknown) => E2; readonly chunkSize?: number | undefined; readonly bufferSize?: number | undefined; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }): <R, E, A>(self: Stream.Stream<A, E, R>) => Stream.Stream<B, E2 | E, R>; <R, E, A, B = Uint8Array<ArrayBufferLike>, E2 = Cause.UnknownError>(self: Stream.Stream<A, E, R>, options: { readonly evaluate: LazyArg<Duplex>; readonly onError?: (error: unknown) => E2; readonly chunkSize?: number | undefined; readonly bufferSize?: number | undefined; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }): Stream.Stream<B, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L141)

Since v4.0.0