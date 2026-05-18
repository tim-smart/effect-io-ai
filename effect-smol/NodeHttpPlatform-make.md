Package: `@effect/platform-node`<br />
Module: `NodeHttpPlatform`<br />

## NodeHttpPlatform.make

Creates the Node `HttpPlatform`, serving file responses from Node readable
streams and adding MIME type and content-length headers when needed.

**Signature**

```ts
declare const make: Effect<{ readonly fileResponse: (path: string, options?: ServerResponse.Options.WithContent & { readonly bytesToRead?: SizeInput | undefined; readonly chunkSize?: SizeInput | undefined; readonly offset?: SizeInput | undefined; }) => Effect<ServerResponse.HttpServerResponse, PlatformError>; readonly fileWebResponse: (file: HttpBody.FileLike, options?: ServerResponse.Options.WithContent & { readonly bytesToRead?: SizeInput | undefined; readonly chunkSize?: SizeInput | undefined; readonly offset?: SizeInput | undefined; }) => Effect<ServerResponse.HttpServerResponse>; }, never, FileSystem | EtagImpl.Generator>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpPlatform.ts#L43)

Since v4.0.0