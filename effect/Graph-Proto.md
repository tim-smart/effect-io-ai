Package: `effect`<br />
Module: `Graph`<br />

## Graph.Proto

Graph prototype interface.

**Signature**

```ts
export interface Proto<out N, out E> extends Iterable<readonly [NodeIndex, N]>, Equal.Equal, Pipeable, Inspectable {
  readonly [TypeId]: TypeId
  readonly nodes: Map<NodeIndex, N>
  readonly edges: Map<EdgeIndex, Edge<E>>
  readonly adjacency: Map<NodeIndex, Array<EdgeIndex>>
  readonly reverseAdjacency: Map<NodeIndex, Array<EdgeIndex>>
  nextNodeIndex: NodeIndex
  nextEdgeIndex: EdgeIndex
  isAcyclic: Option.Option<boolean>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L75)

Since v3.18.0