Package: `effect`<br />
Module: `Graph`<br />

## Graph.Walker

Represents an iterable wrapper used by graph traversal and listing APIs.

**Details**

A `Walker` yields `[index, data]` pairs lazily and can be viewed as just the
indices, just the values, or mapped entries with `indices`, `values`,
`entries`, and `visit`.

**Example** (Working with node walkers)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, 1)
})

// Both traversal and element iterators return NodeWalker
const dfsNodes: Graph.NodeWalker<string> = Graph.dfs(graph, { start: [0] })
const allNodes: Graph.NodeWalker<string> = Graph.nodes(graph)

// Common interface for working with node iterables
function processNodes<N>(nodeIterable: Graph.NodeWalker<N>): Array<number> {
  return Array.from(Graph.indices(nodeIterable))
}

// Access node data using values() or entries()
const nodeData = Array.from(Graph.values(dfsNodes)) // ["A", "B"]
const nodeEntries = Array.from(Graph.entries(allNodes)) // [[0, "A"], [1, "B"]]
```

**Signature**

```ts
declare class Walker<T, N> { constructor(
    /**
     * Visits each element and maps it to a value using the provided function.
     *
     * Takes a function that receives the index and data,
     * and returns an iterable of the mapped values. Skips elements that
     * no longer exist in the graph.
     *
     * **Example** (Visiting walker elements)
     *
     * ```ts
     * import { Graph } from "effect"
     *
     * const graph = Graph.directed<string, number>((mutable) => {
     *   const a = Graph.addNode(mutable, "A")
     *   const b = Graph.addNode(mutable, "B")
     *   Graph.addEdge(mutable, a, b, 1)
     * })
     *
     * const dfs = Graph.dfs(graph, { start: [0] })
     *
     * // Map to just the node data
     * const values = Array.from(dfs.visit((index, data) => data))
     * console.log(values) // ["A", "B"]
     *
     * // Map to custom objects
     * const custom = Array.from(
     *   dfs.visit((index, data) => ({ id: index, name: data }))
     * )
     * console.log(custom) // [{ id: 0, name: "A" }, { id: 1, name: "B" }]
     * ```
     *
     * @category iterators
     * @since 4.0.0
     */
    visit: <U>(f: (index: T, data: N) => U) => Iterable<U>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3876)

Since v3.18.0