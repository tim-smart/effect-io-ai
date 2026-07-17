Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CancelledNotification

Sent from either peer to cancel a previously issued request in the same
direction.

**Details**

The payload identifies the request to cancel and may include a
human-readable reason.

**Signature**

```ts
declare class CancelledNotification
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L760)

Since v4.0.0