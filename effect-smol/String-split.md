Package: `effect`<br />
Module: `String`<br />

## String.split

Splits a string into an array of substrings using a separator.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("abc", String.split("")), ["a", "b", "c"])
assert.deepStrictEqual(pipe("", String.split("")), [""])
assert.deepStrictEqual(String.split("hello,world", ","), ["hello", "world"])
```

**Signature**

```ts
declare const split: { (separator: string | RegExp): (self: string) => NonEmptyArray<string>; (self: string, separator: string | RegExp): NonEmptyArray<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L407)

Since v2.0.0