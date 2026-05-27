Package: `effect`<br />
Module: `Tool`<br />

## Tool.Readonly

Annotation indicating whether a tool only reads data without making changes.

**Details**

This is emitted as the MCP `readOnlyHint`; unannotated tools default to
`false`.

**Example** (Marking a tool as read-only)

```ts
import { Tool } from "effect/unstable/ai"

const readOnlyTool = Tool.make("get_user_info")
  .annotate(Tool.Readonly, true)
```

**Signature**

```ts
declare const Readonly: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1782)

Since v4.0.0