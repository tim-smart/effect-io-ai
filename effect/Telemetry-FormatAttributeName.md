Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.FormatAttributeName

Utility type for converting camelCase names to snake_case format.

This type recursively transforms string literal types from camelCase to
snake_case, which is the standard format for OpenTelemetry attributes.

**Example**

```ts
import { Telemetry } from "@effect/ai"

type Formatted1 = Telemetry.FormatAttributeName<"modelName">    // "model_name"
type Formatted2 = Telemetry.FormatAttributeName<"maxTokens">    // "max_tokens"
type Formatted3 = Telemetry.FormatAttributeName<"temperature">  // "temperature"
```

**Signature**

```ts
type FormatAttributeName<T> = T extends string ?
  T extends `${infer First}${infer Rest}`
    ? `${First extends Uppercase<First> ? "_" : ""}${Lowercase<First>}${FormatAttributeName<Rest>}`
  : T :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L288)

Since v1.0.0