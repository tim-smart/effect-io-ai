Package: `@effect/platform-browser`<br />
Module: `IndexedDbVersion`<br />

## IndexedDbVersion.Tables

Extracts the table union from an `IndexedDbVersion`.

**Signature**

```ts
type Tables<Db> = Db extends IndexedDbVersion<infer _Tables> ? _Tables : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbVersion.ts#L65)

Since v4.0.0