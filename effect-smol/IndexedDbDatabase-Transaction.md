Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.Transaction

Query builder available during a database migration, extended with object-store and index management helpers for the active `IDBTransaction`.

**Signature**

```ts
export interface Transaction<
  Source extends IndexedDbVersion.AnyWithProps = never
> extends Omit<IndexedDbQueryBuilder.IndexedDbQueryBuilder<Source>, "transaction"> {
  readonly transaction: globalThis.IDBTransaction

  readonly createObjectStore: <
    A extends IndexedDbTable.TableName<IndexedDbVersion.Tables<Source>>
  >(
    table: A
  ) => Effect.Effect<globalThis.IDBObjectStore, IndexedDbDatabaseError>

  readonly deleteObjectStore: <
    A extends IndexedDbTable.TableName<IndexedDbVersion.Tables<Source>>
  >(
    table: A
  ) => Effect.Effect<void, IndexedDbDatabaseError>

  readonly createIndex: <
    Name extends IndexedDbTable.TableName<IndexedDbVersion.Tables<Source>>
  >(
    table: Name,
    indexName: IndexFromTableName<Source, Name>,
    options?: IDBIndexParameters
  ) => Effect.Effect<globalThis.IDBIndex, IndexedDbDatabaseError>

  readonly deleteIndex: <
    Name extends IndexedDbTable.TableName<IndexedDbVersion.Tables<Source>>
  >(
    table: Name,
    indexName: IndexFromTableName<Source, Name>
  ) => Effect.Effect<void, IndexedDbDatabaseError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L201)

Since v4.0.0