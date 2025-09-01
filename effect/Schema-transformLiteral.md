Package: `effect`<br />
Module: `Schema`<br />

## Schema.transformLiteral

Creates a new `Schema` which transforms literal values.

**Example**

```ts
import * as assert from "node:assert"
import * as S from "effect/Schema"

const schema = S.transformLiteral(0, "a")

assert.deepStrictEqual(S.decodeSync(schema)(0), "a")
```

**Signature**

```ts
declare const transformLiteral: <Encoded extends AST.LiteralValue, Type extends AST.LiteralValue>(from: Encoded, to: Type) => transformLiteral<Type, Encoded>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4011)

Since v3.10.0