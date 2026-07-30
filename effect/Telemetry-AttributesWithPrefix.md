Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.AttributesWithPrefix

Utility type for prefixing attribute names with a namespace.

Transforms attribute keys by adding a prefix and formatting them according to
OpenTelemetry conventions (camelCase to snake_case).

**Example**

```ts
import { Telemetry } from "@effect/ai"

type RequestAttrs = {
  modelName: string
  maxTokens: number
}

type PrefixedAttrs = Telemetry.AttributesWithPrefix<RequestAttrs, "gen_ai.request">
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L264)

Since v1.0.0