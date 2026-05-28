Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.file

Creates a streaming HTTP body for a file path.

**Details**

The effect requires `FileSystem`, stats the file to set the content length, and can fail with `PlatformError`.

**Signature**

```ts
declare const file: (path: string, options?: { readonly bytesToRead?: FileSystem.SizeInput | undefined; readonly chunkSize?: FileSystem.SizeInput | undefined; readonly offset?: FileSystem.SizeInput | undefined; readonly contentType?: string | undefined; }) => Effect.Effect<Stream, PlatformError.PlatformError, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L541)

Since v4.0.0