## isLeft

Determine if a `Either` is a `Left`.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.isLeft(Either.right(1)), false)
assert.deepStrictEqual(Either.isLeft(Either.left("a")), true)
```

**Signature**

```ts
declare const isLeft: <R, L>(self: Either<R, L>) => self is Left<L, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L255)

Since v2.0.0