Package: `effect`<br />
Module: `Tool`<br />

## Tool.Strict

Annotation controlling whether strict JSON schema mode is enabled for a tool.

When `true`, providers that support strict mode will send `strict: true` to
the model API (e.g. OpenAI's Structured Outputs).

When `false`, strict mode is disabled and `strict: false` is sent.

When `undefined` (default), the provider's global configuration determines
the behavior (e.g. `Config.strictJsonSchema` for OpenAI).

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const flexibleTool = Tool.make("search")
  .annotate(Tool.Strict, false)
```

**Signature**

```ts
declare const Strict: ServiceMap.Reference<boolean | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1731)

Since v1.0.0