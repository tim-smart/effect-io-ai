Package: `effect`<br />
Module: `Either`<br />

## Either.getLeft

Converts a `Either` to an `Option` discarding the value.

**Example**

```ts
import * as assert from "node:assert"
import { Either, Option } from "effect"

assert.deepStrictEqual(Either.getLeft(Either.right('ok')), Option.none())
assert.deepStrictEqual(Either.getLeft(Either.left('err')), Option.some('err'))
```

**Signature**

```ts
declare const getLeft: <A, E>(self: Either<A, E>) => Option<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L307)

Since v2.0.0