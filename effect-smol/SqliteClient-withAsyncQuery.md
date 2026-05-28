Package: `@effect/sql-sqlite-react-native`<br />
Module: `SqliteClient`<br />

## SqliteClient.withAsyncQuery

Runs an effect with `AsyncQuery` enabled, causing React Native SQLite queries in that effect to use the asynchronous driver API.

**Signature**

```ts
declare const withAsyncQuery: <R, E, A>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, never>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-react-native/src/SqliteClient.ts#L134)

Since v4.0.0