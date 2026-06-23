Package: `@effect/sql-mssql`<br />
Module: `MssqlClient`<br />

## MssqlClient.makeCompiler

Creates the SQL Server statement compiler, using `@1`-style placeholders, bracket-escaped identifiers, and SQL Server `OUTPUT INSERTED` returning clauses.

**Signature**

```ts
declare const makeCompiler: (transform?: (_: string) => string) => Statement.Compiler
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/MssqlClient.ts#L642)

Since v4.0.0