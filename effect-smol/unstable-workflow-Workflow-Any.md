Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.Any

Type-erased workflow shape for APIs that operate on workflows without
preserving their specific payload, success, or error types.

**Signature**

```ts
export interface Any {
  new(_: never): {}

  readonly [TypeId]: typeof TypeId
  readonly _tag: string
  readonly executionId: (payload: any) => Effect.Effect<string>
  readonly payloadSchema: AnyStructSchema
  readonly successSchema: Schema.Top
  readonly errorSchema: Schema.Top
  readonly annotations: Context.Context<never>
  readonly idempotencyKey: (payload: any) => string
  readonly suspendedRetrySchedule?: Schedule.Schedule<any, unknown> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L230)

Since v4.0.0