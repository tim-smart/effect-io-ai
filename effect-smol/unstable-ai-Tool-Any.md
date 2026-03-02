Package: `effect`<br />
Module: `Tool`<br />

## Tool.Any

A type which represents any `Tool`.

**Signature**

```ts
export interface Any extends
  Tool<any, {
    readonly parameters: Schema.Top
    readonly success: Schema.Top
    readonly failure: Schema.Top
    readonly failureMode: FailureMode
  }, any>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L607)

Since v1.0.0