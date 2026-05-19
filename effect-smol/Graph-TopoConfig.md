Package: `effect`<br />
Module: `Graph`<br />

## Graph.TopoConfig

Configuration for the topological sort iterator.

**Details**

`initials` optionally supplies the node indices used as initial queue
entries. When omitted, topological sorting starts from all nodes with zero
in-degree.

**Signature**

```ts
export interface TopoConfig {
  readonly initials?: Array<NodeIndex>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4014)

Since v3.18.0