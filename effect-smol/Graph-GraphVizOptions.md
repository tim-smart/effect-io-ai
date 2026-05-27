Package: `effect`<br />
Module: `Graph`<br />

## Graph.GraphVizOptions

Configuration options for GraphViz DOT format generation from graphs.

**Details**

These options customize node labels, edge labels, and graph naming in DOT
format compatible with GraphViz tools.

**Example** (Configuring GraphViz labels)

```ts
import type { Graph } from "effect"

// Basic options with custom labels
const basicOptions: Graph.GraphVizOptions<string, number> = {
  nodeLabel: (data) => `Node: ${data}`,
  edgeLabel: (data) => `Weight: ${data}`
}

// Complete options with graph naming
const namedOptions: Graph.GraphVizOptions<string, string> = {
  nodeLabel: (data) => data.toUpperCase(),
  edgeLabel: (data) => data,
  graphName: "MyDependencyGraph"
}
```

**Signature**

```ts
export interface GraphVizOptions<N, E> {
  /**
   * Function to generate custom labels for nodes.
   * Defaults to String(data) if not provided.
   */
  readonly nodeLabel?: (data: N) => string

  /**
   * Function to generate custom labels for edges.
   * Defaults to String(data) if not provided.
   */
  readonly edgeLabel?: (data: E) => string

  /**
   * Name for the DOT graph.
   * Defaults to "G" if not provided.
   */
  readonly graphName?: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1949)

Since v3.18.0