Package: `effect`<br />
Module: `Either`<br />

## Either.getOrThrow

Extracts the value of an `Either` or throws if the `Either` is `Left`.

The thrown error is a default error. To configure the error thrown, see  `getOrThrowWith`.

**Throws**

`Error("getOrThrow called on a Left")`

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.getOrThrow(Either.right(1)), 1)
assert.throws(() => Either.getOrThrow(Either.left("error")))
```

**Signature**

```ts
declare const getOrThrow: <A, E>(self: Either<A, E>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L624)

Since v2.0.0