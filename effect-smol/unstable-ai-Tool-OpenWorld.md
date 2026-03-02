Package: `effect`<br />
Module: `Tool`<br />

## Tool.OpenWorld

Annotation indicating whether a tool can handle arbitrary external data.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const restrictedTool = Tool.make("internal_operation")
  .annotate(Tool.OpenWorld, false)
```

**Signature**

```ts
declare const OpenWorld: ServiceMap.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1702)

Since v1.0.0