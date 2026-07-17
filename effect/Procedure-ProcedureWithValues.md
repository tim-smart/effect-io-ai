Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.ProcedureWithValues

Stored procedure definition with concrete input values bound for execution.

**Signature**

```ts
export interface ProcedureWithValues<
  I extends Record<string, Parameter.Parameter<any>>,
  O extends Record<string, Parameter.Parameter<any>>,
  A
> extends Procedure<I, O, A> {
  readonly values: Procedure.ParametersRecord<I>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mssql/src/Procedure.ts#L63)

Since v4.0.0