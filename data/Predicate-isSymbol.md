# isSymbol

Tests if a value is a `symbol`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isSymbol } from '@effect/data/Predicate'

assert.deepStrictEqual(isSymbol(Symbol.for('a')), true)

assert.deepStrictEqual(isSymbol('a'), false)
```

**Signature**

```ts
export declare const isSymbol: (input: unknown) => input is symbol
```
