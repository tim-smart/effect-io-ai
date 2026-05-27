Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.make

Creates a migrator that ensures the migrations table exists, runs pending
migrations in a transaction, and optionally dumps the schema after successful
migrations.

**Signature**

```ts
declare const make: <RD = never>({ dumpSchema }: { dumpSchema?: (path: string, migrationsTable: string) => Effect.Effect<void, MigrationError, RD>; }) => <R2 = never>({ loader, schemaDirectory, table }: MigratorOptions<R2>) => Effect.Effect<ReadonlyArray<readonly [id: number, name: string]>, MigrationError | SqlError, Client.SqlClient | RD | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L134)

Since v4.0.0