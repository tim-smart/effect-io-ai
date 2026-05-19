Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.param

Adds a typed input parameter to a SQL Server stored procedure definition.

**Signature**

```ts
declare const param: <A>() => <N extends string, T extends DataType>(name: N, type: T, options?: ParameterOptions) => <I extends Record<string, Parameter.Parameter<any>>, O extends Record<string, Parameter.Parameter<any>>>(self: Procedure<I, O>) => Procedure<Simplify<I & { [K in N]: Parameter.Parameter<A>; }>, O>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L148)

Since v4.0.0