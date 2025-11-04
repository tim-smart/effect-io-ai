Package: `effect`<br />
Module: `Graph`<br />

## Graph.MermaidOptions

Configuration options for Mermaid diagram generation.

**Signature**

```ts
export interface MermaidOptions<N, E> {
  readonly nodeLabel?: (data: N) => string
  readonly edgeLabel?: (data: E) => string
  readonly diagramType?: MermaidDiagramType
  readonly direction?: MermaidDirection
  readonly nodeShape?: (data: N) => MermaidNodeShape
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1694)

Since v3.18.0