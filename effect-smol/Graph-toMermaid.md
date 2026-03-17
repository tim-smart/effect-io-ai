Package: `effect`<br />
Module: `Graph`<br />

## Graph.toMermaid

Exports a graph to Mermaid diagram format for visualization.

Mermaid is a popular diagram-as-code tool that generates flowcharts and other
visualizations from text-based definitions. This function converts Effect Graph
structures to valid Mermaid syntax for use in documentation, web applications,
and visualization tools.

**Example**

```ts
import * as Graph from "effect/Graph"

// Basic directed graph export
const graph = Graph.directed<string, number>((mutable) => {
  const app = Graph.addNode(mutable, "App")
  const db = Graph.addNode(mutable, "Database")
  const cache = Graph.addNode(mutable, "Cache")
  Graph.addEdge(mutable, app, db, 1)
  Graph.addEdge(mutable, app, cache, 2)
})

const mermaid = Graph.toMermaid(graph)
console.log(mermaid)
// flowchart TD
//   0["App"]
//   1["Database"]
//   2["Cache"]
//   0 -->|"1"| 1
//   0 -->|"2"| 2
```

**Example**

```ts
import * as Graph from "effect/Graph"

// Undirected graph with custom labels and direction
const socialGraph = Graph.undirected<{ name: string }, string>((mutable) => {
  const alice = Graph.addNode(mutable, { name: "Alice" })
  const bob = Graph.addNode(mutable, { name: "Bob" })
  const charlie = Graph.addNode(mutable, { name: "Charlie" })
  Graph.addEdge(mutable, alice, bob, "friends")
  Graph.addEdge(mutable, bob, charlie, "colleagues")
})

const mermaid = Graph.toMermaid(socialGraph, {
  nodeLabel: (person) => person.name,
  edgeLabel: (relationship) => relationship,
  direction: "LR"
})
console.log(mermaid)
// graph LR
//   0["Alice"]
//   1["Bob"]
//   2["Charlie"]
//   0 ---|"friends"| 1
//   1 ---|"colleagues"| 2
```

**Example**

```ts
import * as Graph from "effect/Graph"

// Advanced styling with node shapes for flowchart
const workflow = Graph.directed<{ type: string; name: string }, string>(
  (mutable) => {
    const start = Graph.addNode(mutable, { type: "start", name: "Begin" })
    const process = Graph.addNode(mutable, {
      type: "process",
      name: "Process Data"
    })
    const decision = Graph.addNode(mutable, {
      type: "decision",
      name: "Valid?"
    })
    const end = Graph.addNode(mutable, { type: "end", name: "Complete" })
    Graph.addEdge(mutable, start, process, "")
    Graph.addEdge(mutable, process, decision, "")
    Graph.addEdge(mutable, decision, end, "yes")
  }
)

const mermaid = Graph.toMermaid(workflow, {
  nodeLabel: (node) => node.name,
  nodeShape: (node) => {
    switch (node.type) {
      case "start":
        return "stadium"
      case "process":
        return "rectangle"
      case "decision":
        return "diamond"
      case "end":
        return "stadium"
      default:
        return "rectangle"
    }
  }
})
console.log(mermaid)
// flowchart TD
//   0(["Begin"])
//   1["Process Data"]
//   2{"Valid?"}
//   3(["Complete"])
//   0 --> 1
//   1 --> 2
//   2 --> 3
```

**Example**

```ts
import * as Graph from "effect/Graph"

// Real-world example: Software dependency graph
interface Dependency {
  name: string
  version: string
  type: "library" | "framework" | "tool"
}

const dependencyGraph = Graph.directed<Dependency, string>((mutable) => {
  const app = Graph.addNode(mutable, {
    name: "MyApp",
    version: "1.0.0",
    type: "library"
  })
  const react = Graph.addNode(mutable, {
    name: "React",
    version: "18.0.0",
    type: "framework"
  })
  const lodash = Graph.addNode(mutable, {
    name: "Lodash",
    version: "4.17.0",
    type: "library"
  })
  const webpack = Graph.addNode(mutable, {
    name: "Webpack",
    version: "5.0.0",
    type: "tool"
  })

  Graph.addEdge(mutable, app, react, "depends on")
  Graph.addEdge(mutable, app, lodash, "depends on")
  Graph.addEdge(mutable, app, webpack, "builds with")
})

const dependencyDiagram = Graph.toMermaid(dependencyGraph, {
  nodeLabel: (dep) => `${dep.name}\\nv${dep.version}`,
  edgeLabel: (edge) => edge,
  nodeShape: (dep) =>
    dep.type === "framework" ?
      "hexagon" :
      dep.type === "tool"
      ? "diamond"
      : "rectangle",
  direction: "TB"
})

console.log(dependencyDiagram)
// flowchart TB
//   0["MyApp\nv1.0.0"]
//   1{{"React\nv18.0.0"}}
//   2["Lodash\nv4.17.0"]
//   3{"Webpack\nv5.0.0"}
//   0 -->|"depends on"| 1
//   0 -->|"depends on"| 2
//   0 -->|"builds with"| 3
```

**Signature**

```ts
declare const toMermaid: { <N, E>(options?: MermaidOptions<N, E>): <T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => string; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, options?: MermaidOptions<N, E>): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L2187)

Since v4.0.0