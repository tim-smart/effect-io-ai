Package: `@effect/platform-browser`<br />
Module: `IndexedDb`<br />

## IndexedDb.make

Creates an `IndexedDb` service from an `IDBFactory` and `IDBKeyRange` constructor.

**Signature**

```ts
declare const make: (impl: Omit<IndexedDb, typeof TypeId>) => IndexedDb
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDb.ts#L91)

Since v4.0.0