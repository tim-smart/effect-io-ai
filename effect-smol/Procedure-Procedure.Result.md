Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.Procedure.Result

Result of a SQL Server stored procedure call, containing typed output parameter values and returned rows.

**Signature**

```ts
export interface Result<
    O extends Record<string, Parameter.Parameter<any>>,
    A
  > {
    readonly output: ParametersRecord<O>
    readonly rows: ReadonlyArray<A>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L106)

Since v4.0.0