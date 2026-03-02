Package: `effect`<br />
Module: `Graph`<br />

## Graph.MermaidOptions

Configuration options for Mermaid diagram generation from graphs.

Provides customization for node labels, edge labels, diagram type,
layout direction, node shapes, and graph naming in Mermaid format.

**Example**

```ts
import type * as Graph from "effect/Graph"

// Basic options with custom labels
const basicOptions: Graph.MermaidOptions<string, number> = {
  nodeLabel: (data) => `Node: ${data}`,
  edgeLabel: (data) => `Weight: ${data}`
}

// Advanced options with all features
const advancedOptions: Graph.MermaidOptions<string, string> = {
  nodeLabel: (data) => data.toUpperCase(),
  edgeLabel: (data) => data,
  diagramType: "flowchart",
  direction: "LR",
  nodeShape: (data) => data.includes("start") ? "circle" : "rectangle"
}
```

**Signature**

```ts
export interface MermaidOptions<N, E> {
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
   * Diagram type override. If not specified, automatically detects:
   * - "flowchart" for directed graphs
   * - "graph" for undirected graphs
   */
  readonly diagramType?: MermaidDiagramType

  /**
   * Direction for diagram layout.
   * Defaults to "TD" (Top Down) if not provided.
   */
  readonly direction?: MermaidDirection

  /**
   * Function to determine node shape for each node.
   * Defaults to "rectangle" for all nodes if not provided.
   */
  readonly nodeShape?: (data: N) => MermaidNodeShape
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1923)

Since v4.0.0