Package: `effect`<br />
Module: `Tool`<br />

## Tool.Destructive

Annotation indicating whether a tool may perform destructive operations.

**Details**

This is emitted as the MCP `destructiveHint`; unannotated tools default to
`true`, so annotate safe tools with `false`.

**Example** (Marking a tool as non-destructive)

```ts
import { Tool } from "effect/unstable/ai"

const safeTool = Tool.make("search_database")
  .annotate(Tool.Destructive, false)
```

**Signature**

```ts
declare const Destructive: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1761)

Since v4.0.0