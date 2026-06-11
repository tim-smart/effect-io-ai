Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.outputParam

Adds a typed output parameter to a SQL Server stored procedure definition.

**Signature**

```ts
declare const outputParam: <A>() => <N extends string, T extends DataType>(name: N, type: T, options?: ParameterOptions) => <I extends Record<string, Parameter.Parameter<any>>, O extends Record<string, Parameter.Parameter<any>>>(self: Procedure<I, O>) => Procedure<I, Simplify<O & { [K in N]: Parameter.Parameter<A>; }>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L164)

Since v4.0.0