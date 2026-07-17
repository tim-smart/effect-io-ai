Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.Any

Type-erased IndexedDB schema shape used when traversing schema migration chains.

**Signature**

```ts
export interface Any {
  readonly previous?: Any | undefined
  readonly layer: (
    databaseName: string
  ) => Layer.Layer<
    IndexedDbDatabase,
    IndexedDbDatabaseError,
    IndexedDb.IndexedDb
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L264)

Since v4.0.0