Package: `effect`<br />
Module: `WorkflowEngine`<br />

## WorkflowEngine.makeUnsafe

Builds a typed `WorkflowEngine` service from a low-level encoded
implementation. This is unsafe because the implementation must correctly
persist, resume, and encode workflow state.

**Signature**

```ts
declare const makeUnsafe: (options: Encoded) => WorkflowEngine["Service"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowEngine.ts#L381)

Since v4.0.0