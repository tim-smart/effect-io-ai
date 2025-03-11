## isSymbol

Tests if a value is a `symbol`.

**Example**

```ts
import * as assert from "node:assert"
import { isSymbol } from "effect/Predicate"

assert.deepStrictEqual(isSymbol(Symbol.for("a")), true)

assert.deepStrictEqual(isSymbol("a"), false)
```

**Signature**

```ts
declare const isSymbol: (input: unknown) => input is symbol
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L298)

Since v2.0.0