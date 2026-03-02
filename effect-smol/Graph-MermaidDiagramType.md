Package: `effect`<br />
Module: `Graph`<br />

## Graph.MermaidDiagramType

Mermaid diagram types for different visualization formats.

Specifies the Mermaid diagram syntax to use:
- `flowchart`: For directed graphs with arrows (`A --> B`)
- `graph`: For undirected graphs with lines (`A --- B`)

When not specified, automatically selects based on graph type:
directed graphs use "flowchart", undirected graphs use "graph".

**Example**

```ts
import type * as Graph from "effect/Graph"

// Force flowchart format (even for undirected graphs)
const flowchartOptions: Graph.MermaidOptions<string, string> = {
  diagramType: "flowchart"
}

// Force graph format (shows undirected connections)
const graphOptions: Graph.MermaidOptions<string, string> = {
  diagramType: "graph"
}

// Auto-detection (recommended, default behavior)
const autoOptions: Graph.MermaidOptions<string, string> = {}
```

**Signature**

```ts
type MermaidDiagramType = | "flowchart" // For directed graphs
  | "graph"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1884)

Since v4.0.0