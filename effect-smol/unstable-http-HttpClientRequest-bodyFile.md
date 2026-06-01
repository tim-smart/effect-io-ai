Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyFile

Creates a file-backed request body from a filesystem path and sets it on the request.

**Signature**

```ts
declare const bodyFile: { (path: string, options?: { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; readonly contentType?: string; }): (self: HttpClientRequest) => Effect.Effect<HttpClientRequest, PlatformError.PlatformError, FileSystem.FileSystem>; (self: HttpClientRequest, path: string, options?: { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; readonly contentType?: string; }): Effect.Effect<HttpClientRequest, PlatformError.PlatformError, FileSystem.FileSystem>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L842)

Since v4.0.0