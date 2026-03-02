Package: `effect`<br />
Module: `Tool`<br />

## Tool.Title

Annotation for providing a human-readable title for tools.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const myTool = Tool.make("calculate_tip")
  .annotate(Tool.Title, "Tip Calculator")
```

**Signature**

```ts
declare class Title
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1617)

Since v1.0.0