Package: `effect`<br />
Module: `Config`<br />

## Config.literal

Creates a config that only accepts a specific literal value.

**When to use**

Use to restrict a config to a single, specific literal value.

**Details**

Shortcut for `Config.schema(Schema.Literal(literal), name)`.

**Example** (Restricting to a literal)

```ts
import { Config } from "effect"

const env = Config.literal("production", "ENV")
```

**See**

- `literals` – accepts multiple literal values

**Signature**

```ts
declare const literal: <L extends SchemaAST.LiteralValue>(literal: L, name?: string) => Config<L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1014)

Since v2.0.0