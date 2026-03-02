Package: `effect`<br />
Module: `Tool`<br />

## Tool.AnyDynamic

A type which represents any dynamic `Tool`.

**Signature**

```ts
export interface AnyDynamic extends
  Dynamic<any, {
    readonly parameters: Schema.Top | JsonSchema.JsonSchema
    readonly success: Schema.Top
    readonly failure: Schema.Top
    readonly failureMode: FailureMode
  }, any>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L638)

Since v1.0.0