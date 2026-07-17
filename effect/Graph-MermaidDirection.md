Package: `effect`<br />
Module: `Graph`<br />

## Graph.MermaidDirection

Mermaid diagram direction types for controlling layout orientation.

**Details**

Determines the flow direction of nodes and edges in the diagram:
- `TB`/`TD`: Top to Bottom (vertical layout, default)
- `BT`: Bottom to Top (reverse vertical)
- `LR`: Left to Right (horizontal layout)
- `RL`: Right to Left (reverse horizontal)

**Example** (Configuring Mermaid directions)

```ts
import type { Graph } from "effect"

// Horizontal workflow diagram
const horizontalOptions: Graph.MermaidOptions<string, string> = {
  direction: "LR"
}

// Vertical hierarchy (default)
const verticalOptions: Graph.MermaidOptions<string, string> = {
  direction: "TB"
}

// Bottom-up flow
const bottomUpOptions: Graph.MermaidOptions<string, string> = {
  direction: "BT"
}
```

**Signature**

```ts
type MermaidDirection = | "TB" // Top to Bottom (default)
  | "TD" // Top Down (same as TB)
  | "BT" // Bottom to Top
  | "RL" // Right to Left
  | "LR"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3093)

Since v3.18.0