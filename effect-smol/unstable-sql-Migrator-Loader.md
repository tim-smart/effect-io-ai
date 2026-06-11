Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.Loader

Effect that resolves the available migrations for the migrator or fails with a
`MigrationError`.

**Signature**

```ts
type Loader<R> = Effect.Effect<
  ReadonlyArray<ResolvedMigration>,
  MigrationError,
  R
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L41)

Since v4.0.0