## getOrElse

Returns the wrapped value if it's a `Right` or a default value if is a `Left`.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.getOrElse(Either.right(1), (error) => error + "!"), 1)
assert.deepStrictEqual(Either.getOrElse(Either.left("not a number"), (error) => error + "!"), "not a number!")
```

**Signature**

```ts
declare const getOrElse: { <L, R2>(onLeft: (left: L) => R2): <R>(self: Either<R, L>) => R2 | R; <R, L, R2>(self: Either<R, L>, onLeft: (left: L) => R2): R | R2; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L540)

Since v2.0.0