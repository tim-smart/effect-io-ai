## keys

Retrieves the object keys that are strings in a typed manner

**Example**

```ts
import * as assert from "node:assert"
import { Struct } from "effect"

const symbol: unique symbol = Symbol()

const value = {
  a: 1,
  b: 2,
  [symbol]: 3
}

const keys: Array<"a" | "b"> = Struct.keys(value)

assert.deepStrictEqual(keys, ["a", "b"])
```

**Signature**

```ts
declare const keys: <T extends {}>(o: T) => Array<(keyof T) & string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L221)

Since v3.6.0