Package: `effect`<br />
Module: `Either`<br />

## Either.getRight

Converts a `Either` to an `Option` discarding the `Left`.

**Example**

```ts
import * as assert from "node:assert"
import { Either, Option } from "effect"

assert.deepStrictEqual(Either.getRight(Either.right('ok')), Option.some('ok'))
assert.deepStrictEqual(Either.getRight(Either.left('err')), Option.none())
```

**Signature**

```ts
declare const getRight: <A, E>(self: Either<A, E>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L290)

Since v2.0.0