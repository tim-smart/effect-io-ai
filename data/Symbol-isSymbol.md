# isSymbol

Tests if a value is a `symbol`.

Part of the `Symbol` module, imported from `@effect/data/Symbol`.

**Example**

```ts
import { isSymbol } from '@effect/data/Predicate'

assert.deepStrictEqual(isSymbol(Symbol.for('a')), true)
assert.deepStrictEqual(isSymbol('a'), false)
```

**Signature**

```ts
export declare const isSymbol: (u: unknown) => u is symbol
```
