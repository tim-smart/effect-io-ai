Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.fileWeb

Creates a streamed file response for a Web `File`-like value.

**Details**

The effect requires `HttpPlatform` and supports options for status, headers,
offset, and byte range.

**Signature**

```ts
declare const fileWeb: (file: Body.HttpBody.FileLike, options?: (Options.WithContent & { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; }) | undefined) => Effect.Effect<HttpServerResponse, never, HttpPlatform>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L539)

Since v4.0.0