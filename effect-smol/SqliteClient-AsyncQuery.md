Package: `@effect/sql-sqlite-react-native`<br />
Module: `SqliteClient`<br />

## SqliteClient.AsyncQuery

Fiber reference that makes the React Native SQLite client run queries through the asynchronous `execute` API instead of `executeSync`.

**When to use**

Use to switch React Native SQLite query execution to the asynchronous driver
API for a scoped effect.

**Signature**

```ts
declare const AsyncQuery: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-react-native/src/SqliteClient.ts#L123)

Since v4.0.0