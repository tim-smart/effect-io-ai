# transformLiterals

Creates a new `Schema` which maps between corresponding literal values.

To import and use `transformLiterals` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.transformLiterals
```

**Example**

```ts
import * as S from "@effect/schema/Schema"

const Animal = S.transformLiterals([0, "cat"], [1, "dog"], [2, "cow"])

assert.deepStrictEqual(S.decodeSync(Animal)(1), "dog")
```

**Signature**

```ts
export declare const transformLiterals: <
  const A extends readonly (readonly [from: AST.LiteralValue, to: AST.LiteralValue])[]
>(
  ...pairs: A
) => Schema<A[number][1], A[number][0], never>
```
