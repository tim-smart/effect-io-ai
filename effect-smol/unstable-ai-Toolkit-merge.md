Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.merge

Merges multiple toolkits into a single toolkit.

Combines all tools from the provided toolkits into one unified toolkit.
If there are naming conflicts, tools from later toolkits will override
tools from earlier ones.

**Example**

```ts
import { Schema } from "effect"
import { Tool, Toolkit } from "effect/unstable/ai"

const mathToolkit = Toolkit.make(
  Tool.make("add", { success: Schema.Number }),
  Tool.make("subtract", { success: Schema.Number })
)

const utilityToolkit = Toolkit.make(
  Tool.make("get_time", { success: Schema.Number }),
  Tool.make("get_weather", { success: Schema.String })
)

const combined = Toolkit.merge(mathToolkit, utilityToolkit)
```

**Signature**

```ts
declare const merge: <const Toolkits extends ReadonlyArray<Any>>(...toolkits: Toolkits) => Toolkit<MergedTools<Toolkits>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L582)

Since v1.0.0