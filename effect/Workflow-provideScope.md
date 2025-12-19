Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.provideScope

Provides the workflow scope to the given effect.

The workflow scope is only closed when the workflow execution fully
completes.

**Signature**

```ts
declare const provideScope: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Scope.Scope> | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L619)

Since v1.0.0