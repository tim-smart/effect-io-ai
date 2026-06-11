Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.makeCompiler

Creates the PGlite statement compiler, using PostgreSQL `$1` placeholders, double-quoted identifiers, returning clauses, and optional JSON value transformation.

**Signature**

```ts
declare const makeCompiler: (transform?: (_: string) => string, transformJson?: boolean) => Statement.Compiler
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L380)

Since v4.0.0