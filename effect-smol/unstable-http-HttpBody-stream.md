Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.stream

Creates a streaming HTTP body from a stream of byte chunks.

The content type defaults to `application/octet-stream`; content length is optional.

**Signature**

```ts
declare const stream: (body: Stream_.Stream<globalThis.Uint8Array, unknown>, contentType?: string, contentLength?: number) => Stream
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L453)

Since v4.0.0