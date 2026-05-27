Package: `effect`<br />
Module: `Graph`<br />

## Graph.Proto

Common structural interface shared by immutable and mutable graphs.

**Details**

Contains the node and edge maps, adjacency indexes, allocation counters, and
shared protocols used by both `Graph` and `MutableGraph`.

**Signature**

```ts
export interface Proto<out N, out E> extends Iterable<readonly [NodeIndex, N]>, Equal.Equal, Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly nodes: Map<NodeIndex, N>
  readonly edges: Map<EdgeIndex, Edge<E>>
  readonly adjacency: Map<NodeIndex, Array<EdgeIndex>>
  readonly reverseAdjacency: Map<NodeIndex, Array<EdgeIndex>>
  nextNodeIndex: NodeIndex
  nextEdgeIndex: EdgeIndex
  acyclic: Option.Option<boolean>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L165)

Since v3.18.0