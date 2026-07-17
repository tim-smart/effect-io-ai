Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.file

Creates a streamed file response for a file system path.

**Details**

The effect requires `HttpPlatform`, can fail with a platform error, and supports
options for status, headers, offset, and byte range.

**Signature**

```ts
declare const file: (path: string, options?: (Options & { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; }) | undefined) => Effect.Effect<HttpServerResponse, PlatformError, HttpPlatform>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerResponse.ts#L483)

Since v4.0.0