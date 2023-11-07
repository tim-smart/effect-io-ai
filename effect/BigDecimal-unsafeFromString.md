# unsafeFromString

Parses a numerical `string` into a `BigDecimal`.

To import and use `unsafeFromString` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.unsafeFromString
```

**Example**

```ts
import { unsafeFromString, make } from 'effect/BigDecimal'

assert.deepStrictEqual(unsafeFromString('123'), make(123n, 0))
assert.deepStrictEqual(unsafeFromString('123.456'), make(123456n, 3))
assert.throws(() => unsafeFromString('123.abc'))
```

**Signature**

```ts
export declare const unsafeFromString: (s: string) => BigDecimal
```
