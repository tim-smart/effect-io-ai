Package: `@effect/platform-browser`<br />
Module: `IndexedDb`<br />

## IndexedDb.AutoIncrement

Schema for auto-incremented IndexedDB keys, accepting integers from 1 through `2 ** 53`.

**When to use**

Use when you need to define numeric key-path fields for `IndexedDbTable`
definitions that use IndexedDB auto-increment keys.

**Details**

The schema accepts integer values from `1` through `2 ** 53`, matching the
range used for generated IndexedDB auto-increment keys.

**See**

- `IDBValidKey` for the broader IndexedDB key schema

**Signature**

```ts
declare const AutoIncrement: Schema.Int
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDb.ts#L77)

Since v4.0.0