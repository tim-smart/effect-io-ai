Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.fromBabelGlob

Creates a migration loader from a Babel-style glob record, parsing keys such
as `_<id>_<name>Js`, `_<id>_<name>Ts`, `_<id>_<name>Mjs`, or
`_<id>_<name>Mts` and sorting migrations by id.

**Signature**

```ts
declare const fromBabelGlob: (migrations: Record<string, any>) => Loader
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L375)

Since v4.0.0