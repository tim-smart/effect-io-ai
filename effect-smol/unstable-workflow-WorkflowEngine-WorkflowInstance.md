Package: `effect`<br />
Module: `WorkflowEngine`<br />

## WorkflowEngine.WorkflowInstance

Service that contains workflow runtime state for one execution.

**When to use**

Use to read or update workflow execution, suspension, interruption,
lifetime, failure, and activity coordination state inside workflow engine
internals.

**Details**

The service stores the execution ID, workflow definition, long-lived scope,
suspension and interruption flags, the stored failure cause, and activity
coordination state for a single workflow run.

**Signature**

```ts
declare class WorkflowInstance
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowEngine.ts#L240)

Since v4.0.0