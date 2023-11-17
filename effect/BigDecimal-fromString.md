# fromString

Parses a numerical `string` into a `BigDecimal`.

To import and use `fromString` from the "BigDecimal" module:

```ts
import * as BigDecimal from "effect/BigDecimal"
// Can be accessed like this
BigDecimal.fromString
```

**Example**

```ts
import { fromString, make } from "effect/BigDecimal"
import { some, none } from "effect/Option"

assert.deepStrictEqual(fromString("123"), some(make(123n, 0)))
assert.deepStrictEqual(fromString("123.456"), some(make(123456n, 3)))
assert.deepStrictEqual(fromString("123.abc"), none())
```

**Signature**

```ts
export declare const fromString: (s: string) => Option.Option<BigDecimal>
```
