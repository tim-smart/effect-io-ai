Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.SelectType

Decoded row type returned by select queries, adding a `key` field when the table does not define a key path.

**Signature**

```ts
type SelectType<Table> = [IndexedDbTable.KeyPath<Table>] extends [undefined] ? IndexedDbTable.TableSchema<Table>["Type"] & {
      readonly key: (typeof IndexedDb.IDBValidKey)["Type"]
    } :
    IndexedDbTable.TableSchema<Table>["Type"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L182)

Since v4.0.0