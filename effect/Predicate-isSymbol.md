Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isSymbol

A refinement that checks if a value is a `symbol`.

**Example**

```ts
import * as assert from "node:assert"
import { isSymbol } from "effect/Predicate"

assert.strictEqual(isSymbol(Symbol.for("a")), true)

assert.strictEqual(isSymbol("a"), false)
```

**Signature**

```ts
declare const isSymbol: (input: unknown) => input is symbol
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L413)

Since v2.0.0