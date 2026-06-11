Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.fromRecord

Creates a migration loader from a record of migration effects keyed by
`<id>_<name>`, sorted by migration id.

**Signature**

```ts
declare const fromRecord: (migrations: Record<string, Effect.Effect<void, unknown, Client.SqlClient>>) => Loader
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L383)

Since v4.0.0