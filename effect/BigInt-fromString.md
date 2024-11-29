# fromString

Takes a string and returns an `Option` of `bigint`.

If the string is empty or contains characters that cannot be converted into a `bigint`,
it returns `Option.none()`, otherwise, it returns `Option.some(bigint)`.

To import and use `fromString` from the "BigInt" module:

ts
import \* as BigInt from "effect/BigInt"
// Can be accessed like this
BigInt.fromString
undefined

**Example**

```ts
import { BigInt as BI, Option } from "effect"

assert.deepStrictEqual(BI.fromString("42"), Option.some(BigInt(42)))
assert.deepStrictEqual(BI.fromString(" "), Option.none())
assert.deepStrictEqual(BI.fromString("a"), Option.none())
```

**Signature**

```ts
export declare const fromString: (s: string) => Option.Option<bigint>
```
