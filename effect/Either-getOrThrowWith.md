Package: `effect`<br />
Module: `Either`<br />

## Either.getOrThrowWith

Extracts the value of an `Either` or throws if the `Either` is `Left`.

If a default error is sufficient for your use case and you don't need to configure the thrown error, see `getOrThrow`.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(
  Either.getOrThrowWith(Either.right(1), () => new Error('Unexpected Left')),
  1
)
assert.throws(() => Either.getOrThrowWith(Either.left("error"), () => new Error('Unexpected Left')))
```

**Signature**

```ts
declare const getOrThrowWith: { <E>(onLeft: (left: E) => unknown): <A>(self: Either<A, E>) => A; <A, E>(self: Either<A, E>, onLeft: (left: E) => unknown): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L594)

Since v2.0.0