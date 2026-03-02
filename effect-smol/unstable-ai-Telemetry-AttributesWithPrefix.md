Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.AttributesWithPrefix

Utility type for prefixing attribute names with a namespace.

Transforms attribute keys by adding a prefix and formatting them according to
OpenTelemetry conventions (camelCase to snake_case).

**Example**

```ts
import type { Telemetry } from "effect/unstable/ai"

type RequestAttrs = {
  modelName: string
  maxTokens: number
}

type PrefixedAttrs = Telemetry.AttributesWithPrefix<
  RequestAttrs,
  "gen_ai.request"
>
// Results in: {
//   "gen_ai.request.model_name": string
//   "gen_ai.request.max_tokens": number
// }
```

**Signature**

```ts
type AttributesWithPrefix<Attributes, Prefix> = {
  [Name in keyof Attributes as `${Prefix}.${FormatAttributeName<Name>}`]: Attributes[Name]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L264)

Since v4.0.0