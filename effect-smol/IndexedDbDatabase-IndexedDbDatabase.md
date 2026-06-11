Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.IndexedDbDatabase

Service tag for an open IndexedDB database, its `IDBKeyRange` constructor, reactivity service, and rebuild effect.

**When to use**

Use when you need access to the live database service after an
`IndexedDbSchema` layer has been provided, especially for `rebuild` or
lower-level database primitives.

**Details**

`database` is a mutable reference to the current `IDBDatabase`. `IDBKeyRange`
and `reactivity` are shared with query builders created from the schema.

**Gotchas**

`rebuild` closes and deletes the browser database, then reopens it and reruns
migrations. Records not recreated by migrations are removed.

**See**

- `IndexedDb.IndexedDb` for the lower-level browser IndexedDB primitives
- `make` for creating a schema that provides this service as a layer

**Signature**

```ts
declare class IndexedDbDatabase
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L132)

Since v4.0.0