Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CancelledNotification

Notification sent by either peer to cancel a previously issued request in
the same direction.

The payload identifies the request to cancel and may include a
human-readable reason.

**Signature**

```ts
declare class CancelledNotification
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L670)

Since v4.0.0