Package: `@effect/sql-mssql`<br />
Module: `MssqlMigrator`<br />

## MssqlMigrator.layer

Creates a layer that runs the configured SQL migrations during layer construction.

**Signature**

```ts
declare const layer: <R>(options: Migrator.MigratorOptions<R>) => Layer.Layer<never, SqlError | Migrator.MigrationError, Client.SqlClient | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mssql/src/MssqlMigrator.ts#L43)

Since v4.0.0