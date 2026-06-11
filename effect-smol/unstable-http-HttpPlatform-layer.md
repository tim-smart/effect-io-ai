Package: `effect`<br />
Module: `HttpPlatform`<br />

## HttpPlatform.layer

Provides the default `HttpPlatform` implementation for serving file paths and
`File`-like values as streamed HTTP responses.

**Details**

The layer uses the `FileSystem` and weak ETag services to add file metadata
headers such as `etag` and `last-modified`.

**Signature**

```ts
declare const layer: Layer.Layer<HttpPlatform, never, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpPlatform.ts#L143)

Since v4.0.0