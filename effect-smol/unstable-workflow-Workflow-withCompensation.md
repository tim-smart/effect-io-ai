Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.withCompensation

Add compensation logic to an effect inside a Workflow.

**Details**

The compensation finalizer is called if the entire workflow fails, allowing you to perform cleanup or other actions based on the success value and the cause of the workflow failure.

**Gotchas**

Compensation finalizers are only registered for top-level effects in the workflow and do not work for nested activities.

**Signature**

```ts
declare const withCompensation: { <A, R2>(compensation: (value: A, cause: Cause.Cause<unknown>) => Effect.Effect<void, never, R2>): <E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R | R2 | WorkflowInstance | Scope.Scope>; <A, E, R, R2>(effect: Effect.Effect<A, E, R>, compensation: (value: A, cause: Cause.Cause<unknown>) => Effect.Effect<void, never, R2>): Effect.Effect<A, E, R | R2 | WorkflowInstance | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L809)

Since v4.0.0