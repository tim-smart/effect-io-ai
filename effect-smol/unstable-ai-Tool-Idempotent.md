Package: `effect`<br />
Module: `Tool`<br />

## Tool.Idempotent

Annotation indicating whether a tool can be called repeatedly with the same
parameters without changing the result beyond the first call.

**Details**

This is emitted as the MCP `idempotentHint`; unannotated tools default to
`false`.

**Example** (Marking a tool as idempotent)

```ts
import { Tool } from "effect/unstable/ai"

const idempotentTool = Tool.make("get_current_time")
  .annotate(Tool.Idempotent, true)
```

**Signature**

```ts
declare const Idempotent: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1787)

Since v4.0.0