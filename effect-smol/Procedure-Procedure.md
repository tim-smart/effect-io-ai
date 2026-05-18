Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.Procedure

Pipeable definition of a SQL Server stored procedure, tracking its input parameters, output parameters, and result row type.

**Signature**

```ts
export interface Procedure<
  I extends Record<string, Parameter.Parameter<any>>,
  O extends Record<string, Parameter.Parameter<any>>,
  A = never
> extends Pipeable {
  readonly [TypeId]: {
    readonly _A: Covariant<A>
  }
  readonly _tag: "Procedure"
  readonly name: string
  readonly params: I
  readonly outputParams: O
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L52)

Since v4.0.0