Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Idempotent

Annotation indicating whether a tool can be called multiple times safely.

**Example**

```ts
import { Tool } from "@effect/ai"

const idempotentTool = Tool.make("get_current_time")
  .annotate(Tool.Idempotent, true)
```

**Signature**

```ts
declare class Idempotent
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1248)

Since v1.0.0