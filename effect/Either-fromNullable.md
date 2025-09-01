Package: `effect`<br />
Module: `Either`<br />

## Either.fromNullable

Takes a lazy default and a nullable value, if the value is not nully (`null` or `undefined`), turn it into a `Right`, if the value is nully use
the provided default as a `Left`.

**Example**

```ts
import * as assert from "node:assert"
import { Either } from "effect"

assert.deepStrictEqual(Either.fromNullable(1, () => 'fallback'), Either.right(1))
assert.deepStrictEqual(Either.fromNullable(null, () => 'fallback'), Either.left('fallback'))
```

**Signature**

```ts
declare const fromNullable: { <A, E>(onNullable: (right: A) => E): (self: A) => Either<NonNullable<A>, E>; <A, E>(self: A, onNullable: (right: A) => E): Either<NonNullable<A>, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L156)

Since v2.0.0