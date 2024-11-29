# keys

Retrieves the object keys that are strings in a typed manner

To import and use `keys` from the "Struct" module:

ts
import \* as Struct from "effect/Struct"
// Can be accessed like this
Struct.keys
undefined

**Example**

```ts
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
export declare const keys: <T extends {}>(o: T) => Array<keyof T & string>
```
