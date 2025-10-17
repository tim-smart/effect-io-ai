Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.withCompensation

Add compensation logic to an effect inside a Workflow. The compensation finalizer will be
called if the entire workflow fails, allowing you to perform cleanup or
other actions based on the success value and the cause of the workflow failure.

NOTE: Compensation will not work for nested activities. Compensation
finalizers are only registered for top-level effects in the workflow.

**Signature**

```ts
declare const withCompensation: { <A, R2>(compensation: (value: A, cause: Cause.Cause<unknown>) => Effect.Effect<void, never, R2>): <E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R | R2 | WorkflowInstance | Scope.Scope>; <A, E, R, R2>(effect: Effect.Effect<A, E, R>, compensation: (value: A, cause: Cause.Cause<unknown>) => Effect.Effect<void, never, R2>): Effect.Effect<A, E, R | R2 | WorkflowInstance | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L603)

Since v1.0.0