Package: `effect`<br />
Module: `Tool`<br />

## Tool.Destructive

Annotation indicating whether a tool performs destructive operations.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const safeTool = Tool.make("search_database")
  .annotate(Tool.Destructive, false)
```

**Signature**

```ts
declare const Destructive: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1669)

Since v1.0.0