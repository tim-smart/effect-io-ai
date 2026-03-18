Package: `effect`<br />
Module: `Config`<br />

## Config.literal

Creates a config that only accepts a specific literal value.

Shortcut for `Config.schema(Schema.Literal(literal), name)`.

**Example** (Restricting to a literal)

```ts
import { Config } from "effect"

const env = Config.literal("production", "ENV")
```

**Signature**

```ts
declare const literal: <L extends AST.LiteralValue>(literal: L, name?: string) => Config<L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L987)

Since v4.0.0