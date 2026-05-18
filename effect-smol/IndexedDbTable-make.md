Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.make

Creates a typed IndexedDB table definition from its name, schema, optional key path, indexes, auto-increment flag, and durability.

**Signature**

```ts
declare const make: <const Name extends string, TableSchema extends AnySchemaStruct, const Indexes extends Record<string, IndexedDbQueryBuilder.KeyPath<TableSchema>>, const KeyPath extends (AutoIncrement extends true ? IndexedDbQueryBuilder.KeyPathNumber<NoInfer<TableSchema>> : IndexedDbQueryBuilder.KeyPath<NoInfer<TableSchema>>) | undefined = undefined, const AutoIncrement extends boolean = false>(options: { readonly name: Name; readonly schema: [KeyPath] extends [undefined] ? "key" extends keyof TableSchema["fields"] ? "Cannot have a 'key' field when keyPath is undefined" : TableSchema : TableSchema; readonly keyPath?: KeyPath; readonly indexes?: Indexes | undefined; readonly autoIncrement?: IsValidAutoIncrementKeyPath<TableSchema, KeyPath> extends true ? AutoIncrement | undefined : never; readonly durability?: IDBTransactionDurability | undefined; }) => IndexedDbTable<Name, TableSchema, Indexes, Extract<KeyPath, Readonly<IDBValidKey | undefined>>, AutoIncrement>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L182)

Since v4.0.0