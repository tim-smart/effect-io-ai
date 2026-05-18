Package: `@effect/platform-browser`<br />
Module: `IndexedDb`<br />

## IndexedDb.IndexedDb

Service interface that provides the browser `indexedDB` factory and `IDBKeyRange` constructor.

**Signature**

```ts
export interface IndexedDb {
  readonly [TypeId]: typeof TypeId
  readonly indexedDB: globalThis.IDBFactory
  readonly IDBKeyRange: typeof globalThis.IDBKeyRange
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDb.ts#L39)

Since v4.0.0