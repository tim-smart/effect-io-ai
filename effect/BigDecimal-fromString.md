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
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(BigDecimal.fromString("123"), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(BigDecimal.fromString("123.456"), Option.some(BigDecimal.make(123456n, 3)))
assert.deepStrictEqual(BigDecimal.fromString("123.abc"), Option.none())
```

**Signature**

```ts
export declare const fromString: (s: string) => Option.Option<BigDecimal>
```
