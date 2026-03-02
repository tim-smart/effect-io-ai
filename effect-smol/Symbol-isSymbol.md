Package: `effect`<br />
Module: `Symbol`<br />

## Symbol.isSymbol

Tests if a value is a `symbol`.

**Example**

```ts
import * as Predicate from "effect/Predicate"
import * as assert from "node:assert"

assert.deepStrictEqual(Predicate.isSymbol(Symbol.for("a")), true)
assert.deepStrictEqual(Predicate.isSymbol("a"), false)
```

**Signature**

```ts
declare const isSymbol: (u: unknown) => u is symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Symbol.ts#L22)

Since v2.0.0