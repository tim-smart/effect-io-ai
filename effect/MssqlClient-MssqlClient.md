Package: `@effect/sql-mssql`<br />
Module: `MssqlClient`<br />

## MssqlClient.MssqlClient

Microsoft SQL Server client service, extending `SqlClient` with typed parameter fragments and stored procedure calls.

**Signature**

```ts
export interface MssqlClient extends Client.SqlClient {
  readonly [TypeId]: TypeId

  readonly config: MssqlClientConfig

  readonly param: (
    type: DataType,
    value: unknown,
    options?: ParameterOptions
  ) => Statement.Fragment

  readonly call: <
    I extends Record<string, Parameter<any>>,
    O extends Record<string, Parameter<any>>,
    A extends object
  >(
    procedure: Procedure.ProcedureWithValues<I, O, A>
  ) => Effect.Effect<Procedure.Procedure.Result<O, A>, SqlError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mssql/src/MssqlClient.ts#L165)

Since v4.0.0