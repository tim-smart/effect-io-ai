Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.stream

Creates a streaming response from a stream of byte chunks.

**Details**

Optional response metadata can supply the status, headers, content type, and
content length.

**Signature**

```ts
declare const stream: <E>(body: Stream.Stream<Uint8Array, E>, options?: Options | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerResponse.ts#L447)

Since v4.0.0