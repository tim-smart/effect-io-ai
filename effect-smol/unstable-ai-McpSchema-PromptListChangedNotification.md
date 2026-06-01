Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.PromptListChangedNotification

Represents a notification that the server's prompt list changed.

**When to use**

Use to notify clients that `prompts/list` should be requested again.

**Details**

Servers may send this notification without a previous client subscription.

**Signature**

```ts
declare class PromptListChangedNotification
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1401)

Since v4.0.0