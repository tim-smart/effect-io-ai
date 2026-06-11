Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Schedule.VarianceStruct

Type-level marker used by `Schedule.Variance` to record the variance of
`Schedule` type parameters.

**Details**

This interface exists for TypeScript inference and assignability. Users
normally do not construct or inspect it directly.

**Signature**

```ts
export interface VarianceStruct<out Output, in Input, out Error, out Env> {
    readonly _Out: Covariant<Output>
    readonly _In: Contravariant<Input>
    readonly _Error: Covariant<Error>
    readonly _Env: Covariant<Env>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L262)

Since v4.0.0