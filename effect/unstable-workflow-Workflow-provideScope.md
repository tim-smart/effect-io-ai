Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.provideScope

Provides the workflow scope to the given effect, and closes the scope only when the workflow execution fully completes.

**Signature**

```ts
declare const provideScope: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Scope.Scope> | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Workflow.ts#L786)

Since v4.0.0