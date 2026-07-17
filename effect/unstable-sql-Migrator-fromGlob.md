Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.fromGlob

Creates a migration loader from a glob record of dynamic import functions,
parsing files named `<id>_<name>.js`, `<id>_<name>.ts`,
`<id>_<name>.mjs`, or `<id>_<name>.mts` and sorting migrations by id.

**Signature**

```ts
declare const fromGlob: (migrations: Record<string, () => Promise<any>>) => Loader
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Migrator.ts#L336)

Since v4.0.0