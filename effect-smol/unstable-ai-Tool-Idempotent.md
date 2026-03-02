Package: `effect`<br />
Module: `Tool`<br />

## Tool.Idempotent

Annotation indicating whether a tool can be called multiple times safely.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const idempotentTool = Tool.make("get_current_time")
  .annotate(Tool.Idempotent, true)
```

**Signature**

```ts
declare const Idempotent: ServiceMap.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1684)

Since v1.0.0