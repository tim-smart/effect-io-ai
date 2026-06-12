Package: `effect`<br />
Module: `Graph`<br />

## Graph.TopoConfig

Configuration for the topological sort iterator.

**When to use**

Use to prioritize specific zero in-degree nodes in a topological sort.

**Details**

`initials` optionally supplies zero in-degree node indices used as
prioritized initial queue entries. Topological sorting still includes the
other zero in-degree nodes and produces a complete topological order.

**Gotchas**

Throws a `GraphError` when any initial node has incoming edges.

**See**

- `topo` for the iterator that consumes this configuration

**Signature**

```ts
export interface TopoConfig {
  readonly initials?: Array<NodeIndex>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4430)

Since v3.18.0