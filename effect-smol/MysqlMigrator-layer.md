Package: `@effect/sql-mysql2`<br />
Module: `MysqlMigrator`<br />

## MysqlMigrator.layer

Creates a layer that runs the configured SQL migrations during layer construction.

**Signature**

```ts
declare const layer: <R>(options: Migrator.MigratorOptions<R>) => Layer.Layer<never, Migrator.MigrationError | SqlError, Client.SqlClient | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlMigrator.ts#L118)

Since v4.0.0