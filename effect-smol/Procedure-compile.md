Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.compile

Binds input values to a SQL Server stored procedure definition, producing a value that can be executed with `MssqlClient.call`.

**Signature**

```ts
declare const compile: <I extends Record<string, Parameter.Parameter<any>>, O extends Record<string, Parameter.Parameter<any>>, A>(self: Procedure<I, O, A>) => (input: Procedure.ParametersRecord<I>) => ProcedureWithValues<I, O, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L212)

Since v4.0.0