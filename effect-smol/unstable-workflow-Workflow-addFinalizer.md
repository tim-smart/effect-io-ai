Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.addFinalizer

Adds an exit finalizer to the current workflow scope, preserving the
services available when the finalizer is registered.

**Signature**

```ts
declare const addFinalizer: <R>(f: (exit: Exit.Exit<unknown, unknown>) => Effect.Effect<void, never, R>) => Effect.Effect<void, never, WorkflowInstance | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L810)

Since v4.0.0