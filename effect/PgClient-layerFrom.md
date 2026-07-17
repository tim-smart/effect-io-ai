Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.layerFrom

Creates a layer from an effect that acquires a `PgClient`, providing both `PgClient` and `SqlClient`.

**Signature**

```ts
declare const layerFrom: <E, R>(acquire: Effect.Effect<PgClient, E, R>) => Layer.Layer<PgClient | Client.SqlClient, E, Exclude<R, Scope.Scope | Reactivity.Reactivity>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L778)

Since v4.0.0