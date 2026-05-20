Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.AnyWithProps

Type-erased workflow shape that also exposes executable operations needed by
workflow proxy and engine helpers.

**Signature**

```ts
export interface AnyWithProps extends Any {
  readonly payloadSchema: AnyStructSchema
  readonly successSchema: Schema.Top
  readonly errorSchema: Schema.Top
  readonly execute: (
    payload: any,
    options?: { readonly discard?: boolean }
  ) => Effect.Effect<any, any, any>
  readonly resume: (
    executionId: string
  ) => Effect.Effect<void, never, WorkflowEngine>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L243)

Since v4.0.0