Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.make.Step

Input shape for a single execution-plan step.

**Details**

Each step provides a `Context` or `Layer` and may limit attempts, add a
`while` predicate for retry decisions, or attach a `Schedule` for retry
timing.

**Signature**

```ts
type Step = {
    readonly provide: Context.Context<any> | Context.Context<never> | Layer.Any
    readonly attempts?: number | undefined
    readonly while?: ((input: any) => boolean | Effect.Effect<boolean, any, any>) | undefined
    readonly schedule?: Schedule.Schedule<any, any, any> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L259)

Since v3.16.0