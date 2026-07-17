Package: `@effect/platform-browser`<br />
Module: `IndexedDbVersion`<br />

## IndexedDbVersion.make

Creates an `IndexedDbVersion` from one or more table definitions.

**When to use**

Use when you need a typed description of the target IndexedDB schema that a
database migration will materialize.

**Details**

The returned version exposes a `tables` map keyed by each table's
`tableName`, and its type is the union of the supplied table definitions.

**Gotchas**

This constructor only describes the target schema; object stores and indexes
still need to be created in the corresponding `IndexedDbDatabase` migration.
Duplicate table names are not rejected, and the runtime map keeps the later
table for a repeated key.

**See**

- `IndexedDbTable.make` for creating table definitions consumed by this constructor

**Signature**

```ts
declare const make: <const Tables extends NonEmptyReadonlyArray<IndexedDbTable.AnyWithProps>>(...tables: Tables) => IndexedDbVersion<Tables[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbVersion.ts#L131)

Since v4.0.0