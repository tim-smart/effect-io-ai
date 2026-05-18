Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.toArrayBuffer

Consumes a Node readable stream into an `ArrayBuffer`, failing through
`onError` on stream errors or when `maxBytes` is exceeded and destroying the
stream on interruption or failure.

**Signature**

```ts
declare const toArrayBuffer: <E = Cause.UnknownError>(readable: LazyArg<Readable | NodeJS.ReadableStream>, options?: { readonly onError?: (error: unknown) => E; readonly maxBytes?: SizeInput | undefined; }) => Effect.Effect<ArrayBuffer, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L278)

Since v4.0.0