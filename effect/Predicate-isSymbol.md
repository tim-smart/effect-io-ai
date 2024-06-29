# isSymbol

Tests if a value is a `symbol`.

To import and use `isSymbol` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isSymbol
```

**Example**

```ts
import { isSymbol } from "effect/Predicate"

assert.deepStrictEqual(isSymbol(Symbol.for("a")), true)

assert.deepStrictEqual(isSymbol("a"), false)
```

**Signature**

```ts
export declare const isSymbol: (input: unknown) => input is symbol
```
