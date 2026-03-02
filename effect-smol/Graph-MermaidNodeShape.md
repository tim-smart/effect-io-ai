Package: `effect`<br />
Module: `Graph`<br />

## Graph.MermaidNodeShape

Mermaid node shape types for diagram visualization.

Each shape produces different visual representations in Mermaid diagrams:
- `rectangle`: Standard rectangular nodes `A["label"]`
- `rounded`: Rounded rectangular nodes `A("label")`
- `circle`: Circular nodes `A(("label"))`
- `diamond`: Diamond-shaped nodes `A{"label"}`
- `hexagon`: Hexagonal nodes `A{{"label"}}`
- `stadium`: Stadium-shaped nodes `A(["label"])`
- `subroutine`: Subroutine-style nodes `A[["label"]]`
- `cylindrical`: Cylindrical database-style nodes `A[("label")]`

**Example**

```ts
import type * as Graph from "effect/Graph"

// Shape selector function for different node types
const shapeSelector = (nodeData: string): Graph.MermaidNodeShape => {
  if (nodeData.includes("start") || nodeData.includes("end")) return "circle"
  if (nodeData.includes("decision")) return "diamond"
  if (nodeData.includes("process")) return "rectangle"
  if (nodeData.includes("data")) return "cylindrical"
  return "rounded"
}

const options: Graph.MermaidOptions<string, string> = {
  nodeShape: shapeSelector
}
```

**Signature**

```ts
type MermaidNodeShape = | "rectangle" // A["label"]
  | "rounded" // A("label")
  | "circle" // A(("label"))
  | "diamond" // A{"label"}
  | "hexagon" // A{{"label"}}
  | "stadium" // A(["label"])
  | "subroutine" // A[["label"]]
  | "cylindrical"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1804)

Since v4.0.0