Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.OpenWorld

Annotation indicating whether a tool can handle arbitrary external data.

**Example**

```ts
import { Tool } from "@effect/ai"

const restrictedTool = Tool.make("internal_operation")
  .annotate(Tool.OpenWorld, false)
```

**Signature**

```ts
declare class OpenWorld
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1459)

Since v1.0.0