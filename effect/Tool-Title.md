Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Title

Annotation for providing a human-readable title for tools.

**Example**

```ts
import { Tool } from "@effect/ai"

const myTool = Tool.make("calculate_tip")
  .annotate(Tool.Title, "Tip Calculator")
```

**Signature**

```ts
declare class Title
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1337)

Since v1.0.0