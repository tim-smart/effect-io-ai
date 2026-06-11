Package: `effect`<br />
Module: `Graph`<br />

## Graph.TopoConfig

Configuration for the topological sort iterator.

**When to use**

Use to seed a topological sort with specific initial node indices instead of
starting from every zero in-degree node.

**Details**

`initials` optionally supplies the node indices used as initial queue
entries. When omitted, topological sorting starts from all nodes with zero
in-degree.

**See**

- `topo` for the iterator that consumes this configuration

**Signature**

```ts
export interface TopoConfig {
  readonly initials?: Array<NodeIndex>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4310)

Since v3.18.0