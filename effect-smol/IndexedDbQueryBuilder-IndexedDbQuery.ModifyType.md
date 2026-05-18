Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.ModifyType

Input type for insert and upsert operations, adjusted for auto-increment keys and out-of-line keys.

**Signature**

```ts
type ModifyType<Table> = & (IndexedDbTable.AutoIncrement<Table> extends true ?
        & {
          [
            key in keyof Schema.Struct.MakeIn<
              Omit<
                IndexedDbTable.TableSchema<Table>["fields"],
                IndexedDbTable.KeyPath<Table>
              >
            >
          ]: key extends keyof Schema.Struct.MakeIn<
            IndexedDbTable.TableSchema<Table>["fields"]
          > ? Schema.Struct.MakeIn<
              IndexedDbTable.TableSchema<Table>["fields"]
            >[key]
            : never
        }
        & {
          [key in IndexedDbTable.KeyPath<Table>]?: number | undefined
        }
      : Schema.Struct.MakeIn<IndexedDbTable.TableSchema<Table>["fields"]>)
    & ([IndexedDbTable.KeyPath<Table>] extends [undefined] ? {
        key: IDBValidKey
      }
      : {})
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L196)

Since v4.0.0