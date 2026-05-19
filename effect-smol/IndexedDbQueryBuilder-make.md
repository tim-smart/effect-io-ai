Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.make

Creates an `IndexedDbQueryBuilder` from an open database reference, key-range constructor, table map, and reactivity service.

**Signature**

```ts
declare const make: <Source extends IndexedDbVersion.AnyWithProps>({ IDBKeyRange, database, tables, reactivity }: { readonly database: MutableRef.MutableRef<globalThis.IDBDatabase>; readonly IDBKeyRange: typeof globalThis.IDBKeyRange; readonly tables: ReadonlyMap<string, IndexedDbVersion.Tables<Source>>; readonly reactivity: Reactivity.Reactivity["Service"]; }) => IndexedDbQueryBuilder<Source>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L1989)

Since v4.0.0