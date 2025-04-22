Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.fromString

Takes a string and returns an `Option` of `bigint`.

If the string is empty or contains characters that cannot be converted into a `bigint`,
it returns `Option.none()`, otherwise, it returns `Option.some(bigint)`.

**Example**

```ts
import * as assert from "node:assert"
import { BigInt as BI, Option } from "effect"

assert.deepStrictEqual(BI.fromString("42"), Option.some(BigInt(42)))
assert.deepStrictEqual(BI.fromString(" "), Option.none())
assert.deepStrictEqual(BI.fromString("a"), Option.none())
```

**Signature**

```ts
declare const fromString: (s: string) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L603)

Since v2.4.12