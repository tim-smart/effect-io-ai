Package: `@effect/sql-pg`<br />
Module: `PgMigrator`<br />

## PgMigrator.layer

Creates a layer that runs PostgreSQL migrations during layer construction, including `pg_dump`-based schema dump support when requested.

**Signature**

```ts
declare const layer: <R>(options: Migrator.MigratorOptions<R>) => Layer.Layer<never, Migrator.MigrationError | SqlError, SqlClient | PgClient | ChildProcessSpawner.ChildProcessSpawner | FileSystem.FileSystem | Path.Path | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgMigrator.ts#L121)

Since v4.0.0