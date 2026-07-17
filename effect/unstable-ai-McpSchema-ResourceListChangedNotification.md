Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ResourceListChangedNotification

Represents a notification that the server's resource list changed.

**When to use**

Use to notify clients that `resources/list` should be requested again.

**Details**

Servers may send this notification without a previous client subscription.

**Signature**

```ts
declare class ResourceListChangedNotification
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L1059)

Since v4.0.0