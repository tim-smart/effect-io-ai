Package: `effect`<br />
Module: `Schema`<br />

## Schema.transformLiterals

Creates a new `Schema` which maps between corresponding literal values.

**Example**

```ts
import * as assert from "node:assert"
import * as S from "effect/Schema"

const Animal = S.transformLiterals(
  [0, "cat"],
  [1, "dog"],
  [2, "cow"]
)

assert.deepStrictEqual(S.decodeSync(Animal)(1), "dog")
```

**Signature**

```ts
declare const transformLiterals: { <const A extends AST.Members<readonly [from: AST.LiteralValue, to: AST.LiteralValue]>>(...pairs: A): Union<{ -readonly [I in keyof A]: transformLiteral<A[I][1], A[I][0]>; }>; <Encoded extends AST.LiteralValue, Type extends AST.LiteralValue>(pairs: [Encoded, Type]): transformLiteral<Type, Encoded>; <const A extends ReadonlyArray<readonly [from: AST.LiteralValue, to: AST.LiteralValue]>>(...pairs: A): Schema<A[number][1], A[number][0]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4054)

Since v3.10.0