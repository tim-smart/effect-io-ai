Package: `effect`<br />
Module: `WorkflowEngine`<br />

## WorkflowEngine.makeUnsafe

Builds a typed `WorkflowEngine` service from a low-level encoded
implementation.

**When to use**

Use when wiring a trusted low-level workflow engine implementation into the
typed `WorkflowEngine` service.

**Gotchas**

The implementation must correctly persist, resume, and encode workflow state.

**Signature**

```ts
declare const makeUnsafe: (options: Encoded) => WorkflowEngine["Service"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/WorkflowEngine.ts#L377)

Since v4.0.0