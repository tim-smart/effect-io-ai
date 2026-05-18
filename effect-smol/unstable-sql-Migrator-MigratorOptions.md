Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.MigratorOptions

Options for running SQL migrations, including the migration loader, optional
schema dump directory, and migrations table name.

**Signature**

```ts
export interface MigratorOptions<R = never> {
  readonly loader: Loader<R>
  readonly schemaDirectory?: string
  readonly table?: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L42)

Since v4.0.0