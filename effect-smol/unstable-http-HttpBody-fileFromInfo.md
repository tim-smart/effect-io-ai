Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.fileFromInfo

Creates a streaming HTTP body for a file path using already-known file information.

**Details**

The effect requires `FileSystem`, uses the provided file size as the content length, and can fail with `PlatformError`.

**Signature**

```ts
declare const fileFromInfo: (path: string, info: FileSystem.File.Info, options?: { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; readonly contentType?: string | undefined; }) => Effect.Effect<Stream, PlatformError.PlatformError, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L567)

Since v4.0.0