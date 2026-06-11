Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.intoResult

Runs an effect as a workflow execution and converts its outcome into a
`Result`, handling suspension, defect capture, interruption, and workflow
scope finalization.

**Signature**

```ts
declare const intoResult: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Result<A, E>, never, Exclude<R, Scope.Scope> | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L659)

Since v4.0.0