Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.RootsListChangedNotification

A notification from the client to the server, informing it that the list of
roots has changed. This notification should be sent whenever the client adds,
removes, or modifies any root. The server should then request an updated list
of roots using the ListRootsRequest.

**Signature**

```ts
declare class RootsListChangedNotification
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1742)

Since v4.0.0