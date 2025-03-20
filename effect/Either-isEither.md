Package: `effect`<br />
Module: `Either`<br />

## Either.isEither

Tests if a value is a `Either`.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.isEither(Either.right(1)), true)
assert.deepStrictEqual(Either.isEither(Either.left("a")), true)
assert.deepStrictEqual(Either.isEither({ right: 1 }), false)
```

**Signature**

```ts
declare const isEither: (input: unknown) => input is Either<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L239)

Since v2.0.0