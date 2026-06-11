Package: `@effect/sql-mssql`<br />
Module: `Parameter`<br />

## Parameter.Parameter

Metadata for a SQL Server stored procedure parameter, including its name, Tedious data type, options, and phantom value type.

**Signature**

```ts
export interface Parameter<out A> {
  readonly [TypeId]: (_: never) => A
  readonly _tag: "Parameter"
  readonly name: string
  readonly type: DataType
  readonly options: ParameterOptions
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Parameter.ts#L40)

Since v4.0.0