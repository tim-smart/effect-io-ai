# pickLiteral

Creates a new `Schema` from a literal schema.

To import and use `pickLiteral` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.pickLiteral
undefined

**Example**

```ts
import * as Schema from "effect/Schema"
import { Either } from "effect"

const schema = Schema.Literal("a", "b", "c").pipe(Schema.pickLiteral("a", "b"))

assert.deepStrictEqual(Schema.decodeSync(schema)("a"), "a")
assert.deepStrictEqual(Schema.decodeSync(schema)("b"), "b")
assert.strictEqual(Either.isLeft(Schema.decodeUnknownEither(schema)("c")), true)
```

**Signature**

```ts
export declare const pickLiteral: <A extends AST.LiteralValue, L extends array_.NonEmptyReadonlyArray<A>>(
  ...literals: L
) => <I, R>(_schema: Schema<A, I, R>) => Literal<[...L]>
```
