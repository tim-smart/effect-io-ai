Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.toString

Consumes a Node readable stream into a string using the selected encoding,
failing through `onError` on stream errors or when `maxBytes` is exceeded
and destroying the stream on interruption or failure.

**Signature**

```ts
declare const toString: <E = Cause.UnknownError>(readable: LazyArg<Readable | NodeJS.ReadableStream>, options?: { readonly onError?: (error: unknown) => E; readonly encoding?: BufferEncoding | undefined; readonly maxBytes?: SizeInput | undefined; }) => Effect.Effect<string, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L234)

Since v4.0.0