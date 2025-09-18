Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Destructive

Annotation indicating whether a tool performs destructive operations.

**Example**

```ts
import { Tool } from "@effect/ai"

const safeTool = Tool.make("search_database")
  .annotate(Tool.Destructive, false)
```

**Signature**

```ts
declare class Destructive
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1229)

Since v1.0.0