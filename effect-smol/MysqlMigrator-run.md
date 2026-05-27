Package: `@effect/sql-mysql2`<br />
Module: `MysqlMigrator`<br />

## MysqlMigrator.run

Runs SQL migrations using the configured `SqlClient`, returning the migrations that were applied.

**Signature**

```ts
declare const run: <R2 = never>({ loader, schemaDirectory, table }: Migrator.MigratorOptions<R2>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, Migrator.MigrationError | SqlError, Client.SqlClient | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlMigrator.ts#L51)

Since v4.0.0