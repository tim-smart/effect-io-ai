Package: `effect`<br />
Module: `Activity`<br />

## Activity.make

Creates a workflow activity from an effect, using the provided schemas to
encode successes and failures for durable execution.

**Signature**

```ts
declare const make: <R, Success extends Schema.Constraint = Schema.Void, Error extends Schema.Constraint = Schema.Never>(options: { readonly name: string; readonly success?: Success | undefined; readonly error?: Error | undefined; readonly execute: Effect.Effect<Success["Type"], Error["Type"], R>; readonly interruptRetryPolicy?: Schedule.Schedule<any, Cause.Cause<unknown>> | undefined; readonly annotations?: Context.Context<never> | undefined; }) => Activity<Success, Error, Exclude<R, WorkflowInstance | WorkflowEngine | Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L123)

Since v4.0.0