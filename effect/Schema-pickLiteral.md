## pickLiteral

Creates a new `Schema` from a literal schema.

**Example**

```ts
import * as assert from "node:assert"
import { Either, Schema } from "effect"

const schema = Schema.Literal("a", "b", "c").pipe(Schema.pickLiteral("a", "b"))

assert.deepStrictEqual(Schema.decodeSync(schema)("a"), "a")
assert.deepStrictEqual(Schema.decodeSync(schema)("b"), "b")
assert.strictEqual(Either.isLeft(Schema.decodeUnknownEither(schema)("c")), true)
```

**Signature**

```ts
declare const pickLiteral: <A extends AST.LiteralValue, L extends array_.NonEmptyReadonlyArray<A>>(...literals: L) => <I, R>(_schema: Schema<A, I, R>) => Literal<[...L]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L732)

Since v3.10.0