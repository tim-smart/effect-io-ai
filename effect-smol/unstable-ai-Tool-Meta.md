Package: `effect`<br />
Module: `Tool`<br />

## Tool.Meta

Annotation for providing tool metadata for MCP.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const myCalculatorUi = Tool.make("calculator_ui", {})
  .annotate(Tool.Meta, { ui: { resourceUri: "ui://example/calculator-ui" } })
```

**Signature**

```ts
declare class Meta
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1632)

Since v1.0.0