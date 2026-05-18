Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.IndexedDbTable

Typed IndexedDB table definition containing its name, schema, key path, indexes, auto-increment setting, and transaction durability.

**Signature**

```ts
export interface IndexedDbTable<
  out Name extends string,
  out TableSchema extends AnySchemaStruct,
  out Indexes extends Record<
    string,
    IndexedDbQueryBuilder.KeyPath<TableSchema>
  >,
  out KeyPath extends Readonly<IDBValidKey | undefined>,
  out AutoIncrement extends boolean
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  readonly tableName: Name
  readonly tableSchema: TableSchema
  readonly readSchema: Schema.Top
  readonly autoincrementSchema: Schema.Top
  readonly arraySchema: Schema.Top
  readonly keyPath: KeyPath
  readonly indexes: Indexes
  readonly autoIncrement: AutoIncrement
  readonly durability: IDBTransactionDurability
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L37)

Since v4.0.0