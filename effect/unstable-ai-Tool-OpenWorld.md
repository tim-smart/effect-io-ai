Package: `effect`<br />
Module: `Tool`<br />

## Tool.OpenWorld

Annotation indicating whether a tool may interact with arbitrary external
data or systems.

**Details**

This is emitted as the MCP `openWorldHint`; unannotated tools default to
`true`.

**Example** (Disabling open-world access)

```ts
import { Tool } from "effect/unstable/ai"

const restrictedTool = Tool.make("internal_operation")
  .annotate(Tool.OpenWorld, false)
```

**Signature**

```ts
declare const OpenWorld: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tool.ts#L1811)

Since v4.0.0