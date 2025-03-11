## getRights

Retrieves the `Right` values from an `Iterable` of `Either`s.

**Example**

```ts
import * as assert from "node:assert"
import { Iterable, Either } from "effect"

assert.deepStrictEqual(
  Array.from(Iterable.getRights([Either.right(1), Either.left("err"), Either.right(2)])),
  [1, 2]
)
```

**Signature**

```ts
declare const getRights: <R, L>(self: Iterable<Either<R, L>>) => Iterable<R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L889)

Since v2.0.0