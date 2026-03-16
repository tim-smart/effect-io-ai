Package: `effect`<br />
Module: `Tool`<br />

## Tool.Readonly

Annotation indicating whether a tool only reads data without making changes.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const readOnlyTool = Tool.make("get_user_info")
  .annotate(Tool.Readonly, true)
```

**Signature**

```ts
declare const Readonly: ServiceMap.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1651)

Since v1.0.0