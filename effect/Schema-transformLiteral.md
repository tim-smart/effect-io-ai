# transformLiteral

Creates a new `Schema` which transforms literal values.

To import and use `transformLiteral` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.transformLiteral
```

**Example**

```ts
import * as S from "@effect/schema/Schema"

const schema = S.transformLiteral(0, "a")

assert.deepStrictEqual(S.decodeSync(schema)(0), "a")
```

**Signature**

```ts
export declare const transformLiteral: <Encoded extends AST.LiteralValue, Type extends AST.LiteralValue>(
  from: Encoded,
  to: Type
) => transformLiteral<Type, Encoded>
```
