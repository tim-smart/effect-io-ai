Package: `@effect/sql-sqlite-bun`<br />
Module: `SqliteMigrator`<br />

## SqliteMigrator.run

Runs SQL migrations using the configured `SqlClient`, returning the migrations that were applied.

**Signature**

```ts
declare const run: <R2 = never>(options: Migrator.MigratorOptions<R2>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, Migrator.MigrationError | SqlError, Client.SqlClient | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-bun/src/SqliteMigrator.ts#L41)

Since v4.0.0