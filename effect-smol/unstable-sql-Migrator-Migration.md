Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.Migration

Metadata for a migration recorded in the migrations table, including its id,
name, and creation timestamp.

**Signature**

```ts
export interface Migration {
  readonly id: number
  readonly name: string
  readonly createdAt: Date
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L81)

Since v4.0.0