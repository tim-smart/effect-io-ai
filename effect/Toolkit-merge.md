Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.merge

Merges multiple toolkits into a single toolkit.

Combines all tools from the provided toolkits into one unified toolkit.
If there are naming conflicts, tools from later toolkits will override
tools from earlier ones.

**Example**

```ts
import { Toolkit, Tool } from "@effect/ai"

const mathToolkit = Toolkit.make(
  Tool.make("add"),
  Tool.make("subtract")
)

const utilityToolkit = Toolkit.make(
  Tool.make("get_time"),
  Tool.make("get_weather")
)

const combined = Toolkit.merge(mathToolkit, utilityToolkit)
// combined now has: add, subtract, get_time, get_weather
```

**Example**

```ts
import { Toolkit, Tool } from "@effect/ai"

// Incremental toolkit building
const baseToolkit = Toolkit.make(Tool.make("base_tool"))
const extendedToolkit = Toolkit.merge(
  baseToolkit,
  Toolkit.make(Tool.make("additional_tool")),
  Toolkit.make(Tool.make("another_tool"))
)
```

**Signature**

```ts
declare const merge: <const Toolkits extends ReadonlyArray<Any>>(...toolkits: Toolkits) => Toolkit<MergedTools<Toolkits>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L504)

Since v1.0.0