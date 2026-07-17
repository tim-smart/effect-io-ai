Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseMigrator`<br />

## ClickhouseMigrator.run

Runs SQL migrations for ClickHouse using the supplied migrator options and
returns the applied migration IDs and names.

**Signature**

```ts
declare const run: <R2 = never>({ loader, schemaDirectory, table }: Migrator.MigratorOptions<R2>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, Migrator.MigrationError | SqlError, Client.SqlClient | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseMigrator.ts#L30)

Since v4.0.0