Package: `@effect/sql-mssql`<br />
Module: `MssqlMigrator`<br />

## MssqlMigrator.run

Runs SQL migrations using the configured `SqlClient`, returning the migrations that were applied.

**Signature**

```ts
declare const run: <R>(options: Migrator.MigratorOptions<R>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, SqlError | Migrator.MigrationError, Client.SqlClient | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/MssqlMigrator.ts#L29)

Since v4.0.0