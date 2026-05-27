Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.PersistedFile

Multipart file part that has been written to the filesystem.

**Details**

The `path` points to the persisted file while the scope used to persist the
multipart data remains open.

**Signature**

```ts
export interface PersistedFile extends Part.Proto {
  readonly _tag: "PersistedFile"
  readonly key: string
  readonly name: string
  readonly contentType: string
  readonly path: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L181)

Since v4.0.0