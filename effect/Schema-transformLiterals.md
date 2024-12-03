# transformLiterals

Creates a new `Schema` which maps between corresponding literal values.

To import and use `transformLiterals` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.transformLiterals
```

**Example**

```ts
import * as S from "effect/Schema"

const Animal = S.transformLiterals([0, "cat"], [1, "dog"], [2, "cow"])

assert.deepStrictEqual(S.decodeSync(Animal)(1), "dog")
```

**Signature**

```ts
export declare function transformLiterals<
  const A extends AST.Members<readonly [from: AST.LiteralValue, to: AST.LiteralValue]>
>(...pairs: A): Union<{ -readonly [I in keyof A]: transformLiteral<A[I][1], A[I][0]> }>
export declare function transformLiterals<Encoded extends AST.LiteralValue, Type extends AST.LiteralValue>(
  pairs: [Encoded, Type]
): transformLiteral<Type, Encoded>
export declare function transformLiterals<
  const A extends ReadonlyArray<readonly [from: AST.LiteralValue, to: AST.LiteralValue]>
>(...pairs: A): Schema<A[number][1], A[number][0]>
```
