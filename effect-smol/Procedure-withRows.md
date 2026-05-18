Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.withRows

Sets the expected row type for a SQL Server stored procedure definition.

**Signature**

```ts
declare const withRows: <A extends object = Row>() => <I extends Record<string, Parameter.Parameter<any>>, O extends Record<string, Parameter.Parameter<any>>>(self: Procedure<I, O>) => Procedure<I, O, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L197)

Since v4.0.0