Package: `@effect/sql-mssql`<br />
Module: `Procedure`<br />

## Procedure.Procedure.ParametersRecord

Maps a record of `Parameter` metadata to the corresponding record of parameter value types.

**Signature**

```ts
type { readonly [K in keyof A]: A[K] extends Parameter.Parameter<infer T> ? T : never; } = & {
      readonly [K in keyof A]: A[K] extends Parameter.Parameter<infer T> ? T
        : never
    }
    & {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/Procedure.ts#L83)

Since v4.0.0