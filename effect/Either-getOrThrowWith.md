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
declare const getOrThrowWith: { <L>(onLeft: (left: L) => unknown): <A>(self: Either<A, L>) => A; <R, L>(self: Either<R, L>, onLeft: (left: L) => unknown): R; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L598)

Since v2.0.0