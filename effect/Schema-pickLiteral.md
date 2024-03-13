# pickLiteral

Creates a new `Schema` from a literal schema.

To import and use `pickLiteral` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.pickLiteral
```

**Example**

```ts
import * as S from "@effect/schema/Schema"
import { Either } from "effect"

const schema = S.literal("a", "b", "c").pipe(S.pickLiteral("a", "b"))

assert.deepStrictEqual(S.decodeSync(schema)("a"), "a")
assert.deepStrictEqual(S.decodeSync(schema)("b"), "b")
assert.strictEqual(Either.isLeft(S.decodeUnknownEither(schema)("c")), true)
```

**Signature**

```ts
export declare const pickLiteral: <A extends AST.LiteralValue, L extends readonly [A, ...A[]]>(
  ...literals: L
) => <I, R>(_schema: Schema<A, I, R>) => literal<[...L]>
```
