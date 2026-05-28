Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.makeCompiler

Creates the PostgreSQL statement compiler, using `$1` placeholders, double-quoted identifiers, PostgreSQL returning clauses, and optional JSON value transformation.

**Signature**

```ts
declare const makeCompiler: (transform?: (_: string) => string, transformJson?: boolean) => Statement.Compiler
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L843)

Since v4.0.0