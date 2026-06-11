Package: `@effect/sql-pglite`<br />
Module: `PgliteMigrator`<br />

## PgliteMigrator.run

Runs SQL migrations using the configured `SqlClient`, returning the migrations that were applied.

**Signature**

```ts
declare const run: <R2 = never>(options: Migrator.MigratorOptions<R2>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, Migrator.MigrationError | SqlError, Client.SqlClient | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteMigrator.ts#L28)

Since v4.0.0