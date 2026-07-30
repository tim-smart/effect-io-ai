Package: `effect`<br />
Module: `String`<br />

## String.takeRight

Keep the specified number of characters from the end of a string.

If `n` is larger than the available number of characters, the string will
be returned whole.

If `n` is not a positive number, an empty string will be returned.

If `n` is a float, it will be rounded down to the nearest integer.

**Example**

```ts
import * as assert from "node:assert"
import { String } from "effect"

assert.deepStrictEqual(String.takeRight("Hello World", 5), "World")
```

**Signature**

```ts
declare const takeRight: { (n: number): (self: string) => string; (self: string, n: number): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L615)

Since v2.0.0