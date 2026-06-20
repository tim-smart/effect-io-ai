Package: `effect`<br />
Module: `Tool`<br />

## Tool.NeedsApprovalFunction

Function type for dynamically determining if a tool requires approval.

**Signature**

```ts
type NeedsApprovalFunction<Params> = (
  params: Params["Type"],
  context: NeedsApprovalContext
) => boolean | Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L142)

Since v4.0.0