Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.PgliteClientConfig.ConfigBase

Config-friendly subset of PGlite creation options, including data directory, username, database, relaxed durability, and shared transform options.

**Signature**

```ts
export interface ConfigBase extends Base {
    readonly dataDir?: string | undefined
    readonly username?: string | undefined
    readonly database?: string | undefined
    readonly relaxedDurability?: boolean | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L159)

Since v4.0.0