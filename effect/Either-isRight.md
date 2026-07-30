Package: `effect`<br />
Module: `Either`<br />

## Either.isRight

Determine if a `Either` is a `Right`.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.isRight(Either.right(1)), true)
assert.deepStrictEqual(Either.isRight(Either.left("a")), false)
```

**Signature**

```ts
declare const isRight: <A, E>(self: Either<A, E>) => self is Right<E, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L273)

Since v2.0.0