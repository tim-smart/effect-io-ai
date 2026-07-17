Package: `effect`<br />
Module: `Graph`<br />

## Graph.Direction

Direction of directed edges relative to a node.

**Details**

`"outgoing"` selects edges whose source is the node, while `"incoming"`
selects edges whose target is the node.

**Signature**

```ts
type Direction = "outgoing" | "incoming"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3512)

Since v3.18.0