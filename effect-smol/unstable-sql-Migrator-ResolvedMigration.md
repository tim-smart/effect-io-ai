Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.ResolvedMigration

Tuple produced by a migration loader, containing the migration id, migration
name, and an effect that loads the migration implementation.

**Signature**

```ts
type ResolvedMigration = readonly [
  id: number,
  name: string,
  load: Effect.Effect<any, any, Client.SqlClient>
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L89)

Since v4.0.0