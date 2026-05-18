Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.toUint8Array

Consumes a Node readable stream into a `Uint8Array`, using the same error
mapping and `maxBytes` handling as `toArrayBuffer`.

**Signature**

```ts
declare const toUint8Array: <E = Cause.UnknownError>(readable: LazyArg<Readable | NodeJS.ReadableStream>, options?: { readonly onError?: (error: unknown) => E; readonly maxBytes?: SizeInput | undefined; }) => Effect.Effect<Uint8Array, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L328)

Since v4.0.0