Package: `@effect/sql-pg`<br />
Module: `PgMigrator`<br />

## PgMigrator.run

Runs PostgreSQL SQL migrations using the configured clients. Schema dumps use `pg_dump` and require child process, filesystem, and path services.

**Signature**

```ts
declare const run: <R2 = never>(options: Migrator.MigratorOptions<R2>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, Migrator.MigrationError | SqlError, SqlClient | PgClient | ChildProcessSpawner.ChildProcessSpawner | FileSystem.FileSystem | Path.Path | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgMigrator.ts#L35)

Since v4.0.0