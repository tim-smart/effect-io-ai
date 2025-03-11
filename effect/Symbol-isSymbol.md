## isSymbol

Tests if a value is a `symbol`.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

assert.deepStrictEqual(Predicate.isSymbol(Symbol.for("a")), true)
assert.deepStrictEqual(Predicate.isSymbol("a"), false)
```

**Signature**

```ts
declare const isSymbol: (u: unknown) => u is symbol
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Symbol.ts#L23)

Since v2.0.0