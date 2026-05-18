Package: `effect`<br />
Module: `HttpPlatform`<br />

## HttpPlatform.make

Creates an `HttpPlatform` service from platform-specific file response constructors, using `FileSystem` and `Etag.Generator`.

**Signature**

```ts
declare const make: (impl: { readonly fileResponse: (path: string, status: number, statusText: string | undefined, headers: Headers.Headers, start: number, end: number | undefined, contentLength: number) => Response.HttpServerResponse; readonly fileWebResponse: (file: Body.HttpBody.FileLike, status: number, statusText: string | undefined, headers: Headers.Headers, options?: { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; }) => Response.HttpServerResponse; }) => Effect.Effect<HttpPlatform["Service"], never, Etag.Generator | FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpPlatform.ts#L69)

Since v4.0.0