Package: `effect`<br />
Module: `Tool`<br />

## Tool.NeedsApproval

Specifies whether user approval is required before executing a tool.

Can be:
- `boolean`: Static approval requirement
- `NeedsApprovalFunction`: Dynamic approval based on parameters/context

**Signature**

```ts
type NeedsApproval<Params> = | boolean
  | NeedsApprovalFunction<Params>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L141)

Since v1.0.0