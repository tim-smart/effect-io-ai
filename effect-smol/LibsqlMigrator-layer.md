Package: `@effect/sql-libsql`<br />
Module: `LibsqlMigrator`<br />

## LibsqlMigrator.layer

Creates a layer that runs the configured SQL migrations during layer construction.

**Signature**

```ts
declare const layer: <R>(options: Migrator.MigratorOptions<R>) => Layer.Layer<never, Migrator.MigrationError | SqlError, Client.SqlClient | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlMigrator.ts#L66)

Since v4.0.0