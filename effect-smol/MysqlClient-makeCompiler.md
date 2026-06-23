Package: `@effect/sql-mysql2`<br />
Module: `MysqlClient`<br />

## MysqlClient.makeCompiler

Creates the MySQL statement compiler, using `?` placeholders and backtick-escaped identifiers.

**Signature**

```ts
declare const makeCompiler: (transform?: (_: string) => string) => Statement.Compiler
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlClient.ts#L454)

Since v4.0.0