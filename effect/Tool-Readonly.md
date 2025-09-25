Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Readonly

Annotation indicating whether a tool only reads data without making changes.

**Example**

```ts
import { Tool } from "@effect/ai"

const readOnlyTool = Tool.make("get_user_info")
  .annotate(Tool.Readonly, true)
```

**Signature**

```ts
declare class Readonly
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1212)

Since v1.0.0