Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.make

Creates a typed IndexedDB table definition from its name, schema, optional key path, indexes, auto-increment flag, and durability.

**When to use**

Use to define a typed object-store descriptor for inclusion in an
`IndexedDbVersion` and for migration or query APIs.

**Details**

`autoIncrement` defaults to `false` and `durability` defaults to `"relaxed"`.
Tables without a key path get a read schema that includes an out-of-line
`key`, while auto-increment tables use a write schema where the generated key
may be omitted.

**Gotchas**

Tables without a key path cannot define a `key` field in their row schema.
Key paths and index paths must point to encoded fields whose values are valid
IndexedDB keys, and declared indexes still need to be created during
database migrations.

**See**

- `IndexedDbVersion.make` for grouping table definitions into a schema version

**Signature**

```ts
declare const make: <const Name extends string, TableSchema extends AnySchemaStruct, const Indexes extends Record<string, IndexedDbQueryBuilder.KeyPath<TableSchema>>, const KeyPath extends (AutoIncrement extends true ? IndexedDbQueryBuilder.KeyPathNumber<NoInfer<TableSchema>> : IndexedDbQueryBuilder.KeyPath<NoInfer<TableSchema>>) | undefined = undefined, const AutoIncrement extends boolean = false>(options: { readonly name: Name; readonly schema: [KeyPath] extends [undefined] ? "key" extends keyof TableSchema["fields"] ? "Cannot have a 'key' field when keyPath is undefined" : TableSchema : TableSchema; readonly keyPath?: KeyPath; readonly indexes?: Indexes | undefined; readonly autoIncrement?: IsValidAutoIncrementKeyPath<TableSchema, KeyPath> extends true ? AutoIncrement | undefined : never; readonly durability?: IDBTransactionDurability | undefined; }) => IndexedDbTable<Name, TableSchema, Indexes, Extract<KeyPath, Readonly<IDBValidKey | undefined>>, AutoIncrement>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L195)

Since v4.0.0