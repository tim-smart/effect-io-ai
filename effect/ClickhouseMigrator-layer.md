Package: `@effect/sql-clickhouse`<br />
Module: `ClickhouseMigrator`<br />

## ClickhouseMigrator.layer

Creates a layer that runs the configured ClickHouse migrations during layer
construction and provides no services.

**Signature**

```ts
declare const layer: <R>(options: Migrator.MigratorOptions<R>) => Layer.Layer<never, Migrator.MigrationError | SqlError, Client.SqlClient | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/clickhouse/src/ClickhouseMigrator.ts#L45)

Since v4.0.0