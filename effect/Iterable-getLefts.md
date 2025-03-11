## getLefts

Retrieves the `Left` values from an `Iterable` of `Either`s.

**Example**

```ts
import * as assert from "node:assert"
import { Iterable, Either } from "effect"

assert.deepStrictEqual(
  Array.from(Iterable.getLefts([Either.right(1), Either.left("err"), Either.right(2)])),
  ["err"]
)
```

**Signature**

```ts
declare const getLefts: <R, L>(self: Iterable<Either<R, L>>) => Iterable<L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L870)

Since v2.0.0