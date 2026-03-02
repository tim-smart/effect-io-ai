Package: `effect`<br />
Module: `Param`<br />

## Param.VariadicParamOptions

Represent options which can be used to configure variadic parameters.

**Signature**

```ts
type VariadicParamOptions = {
  /**
   * The minimum number of times the parameter can be specified.
   */
  readonly min?: number | undefined
  /**
   * The maximum number of times the parameter can be specified.
   */
  readonly max?: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1236)

Since v4.0.0