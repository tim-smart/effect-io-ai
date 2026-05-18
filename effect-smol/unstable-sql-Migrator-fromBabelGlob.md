Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.fromBabelGlob

Creates a migration loader from a Babel-style glob record, parsing keys such
as `_<id>_<name>Js` or `_<id>_<name>Ts` and sorting migrations by id.

**Signature**

```ts
declare const fromBabelGlob: (migrations: Record<string, any>) => Loader
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L374)

Since v4.0.0