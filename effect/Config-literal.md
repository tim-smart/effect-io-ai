## literal

Constructs a config for a literal value.

**Example**

```ts
import { Config } from "effect"

const config = Config.literal("http", "https")("PROTOCOL")
```

**Signature**

```ts
declare const literal: <Literals extends ReadonlyArray<LiteralValue>>(...literals: Literals) => (name?: string) => Config<Literals[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L192)

Since v2.0.0