Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ToolListChangedNotification

Represents a notification that the server's tool list changed.

**When to use**

Use to notify clients that `tools/list` should be requested again.

**Details**

Servers may send this notification without a previous client subscription.

**Signature**

```ts
declare class ToolListChangedNotification
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L1579)

Since v4.0.0