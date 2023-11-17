# isSymbol

Tests if a value is a `symbol`.

To import and use `isSymbol` from the "Symbol" module:

```ts
import * as Symbol from "effect/Symbol"
// Can be accessed like this
Symbol.isSymbol
```

**Example**

```ts
import { isSymbol } from "effect/Predicate"

assert.deepStrictEqual(isSymbol(Symbol.for("a")), true)
assert.deepStrictEqual(isSymbol("a"), false)
```

**Signature**

```ts
export declare const isSymbol: (u: unknown) => u is symbol
```
