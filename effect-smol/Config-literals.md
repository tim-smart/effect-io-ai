Package: `effect`<br />
Module: `Config`<br />

## Config.literals

Creates a config that only accepts one of the specified literal values.

Shortcut for `Config.schema(Schema.Literals(literals), name)`.

**Example** (Restricting to a set of literals)

```ts
import { Config } from "effect"

const env = Config.literals(["development", "production"], "ENV")
```

**Signature**

```ts
declare const literals: <const L extends ReadonlyArray<AST.LiteralValue>>(literals: L, name?: string) => Config<L[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L979)

Since v4.0.0