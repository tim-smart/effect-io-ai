Package: `@effect/platform-bun`<br />
Module: `BunMultipart`<br />

## BunMultipart.persisted

Parses and persists multipart data from a Bun `Request`, requiring file-system, path, and scope services.

**Signature**

```ts
declare const persisted: (source: Request) => Effect.Effect<Multipart.Persisted, Multipart.MultipartError, FileSystem | Path | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunMultipart.ts#L58)

Since v4.0.0