Package: `effect`<br />
Module: `Statement`<br />

## Statement.makeCompilerSqlite

Creates a SQLite compiler that uses `?` placeholders and quoted identifiers,
optionally transforming identifier names before escaping.

**Signature**

```ts
declare const makeCompilerSqlite: (transform?: ((_: string) => string) | undefined) => Compiler
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L1061)

Since v4.0.0