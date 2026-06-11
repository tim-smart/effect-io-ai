Package: `@effect/platform-node`<br />
Module: `NodeMultipart`<br />

## NodeMultipart.persisted

Parses multipart data from a Node readable request body and persists file
parts using the current `FileSystem`, `Path`, and `Scope` services.

**Signature**

```ts
declare const persisted: (source: Readable, headers: IncomingHttpHeaders) => Effect.Effect<Multipart.Persisted, Multipart.MultipartError, Scope.Scope | FileSystem.FileSystem | Path.Path>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeMultipart.ts#L61)

Since v4.0.0