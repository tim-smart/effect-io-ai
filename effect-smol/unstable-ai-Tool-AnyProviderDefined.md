Package: `effect`<br />
Module: `Tool`<br />

## Tool.AnyProviderDefined

A type which represents any provider-defined `Tool`.

**Signature**

```ts
export interface AnyProviderDefined extends
  ProviderDefined<any, any, {
    readonly args: Schema.Top
    readonly parameters: Schema.Top
    readonly success: Schema.Top
    readonly failure: Schema.Top
    readonly failureMode: FailureMode
  }, any>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L622)

Since v1.0.0