Package: `effect`<br />
Module: `Either`<br />

## Either.getOrElse

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
declare const getOrElse: { <E, A2>(onLeft: (left: E) => A2): <A>(self: Either<A, E>) => A2 | A; <A, E, A2>(self: Either<A, E>, onLeft: (left: E) => A2): A | A2; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L536)

Since v2.0.0