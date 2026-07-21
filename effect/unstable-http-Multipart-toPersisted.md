Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.toPersisted

Persists a stream of multipart parts into a record.

**Details**

Text fields are collected as strings, and file parts are written to files in a
scoped temporary directory.

**Gotchas**

Persisted file paths remain valid for the lifetime of the scope.

**Signature**

```ts
declare const toPersisted: (stream: Stream.Stream<Part, MultipartError>, writeFile?: (path: string, file: File) => Effect.Effect<void, MultipartError, FileSystem.FileSystem>) => Effect.Effect<Persisted, MultipartError, FileSystem.FileSystem | Path.Path | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L669)

Since v4.0.0