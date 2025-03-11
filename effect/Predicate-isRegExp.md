## isRegExp

Tests if a value is a `RegExp`.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

assert.deepStrictEqual(Predicate.isRegExp(/a/), true)
assert.deepStrictEqual(Predicate.isRegExp("a"), false)
```

**Signature**

```ts
declare const isRegExp: (input: unknown) => input is RegExp
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L707)

Since v3.9.0