Package: `effect`<br />
Module: `Struct`<br />

## Struct.entries

Retrieves the entries (key-value pairs) of an object, where keys are strings,
in a type-safe manner. Symbol keys are excluded from the result.

**Example**

```ts
import * as assert from "node:assert"
import { Struct } from "effect"

const c = Symbol("c")
const value = { a: "foo", b: 1, [c]: true }

const entries: Array<["a" | "b", string | number]> = Struct.entries(value)

assert.deepStrictEqual(entries, [["a", "foo"], ["b", 1]])
```

**Signature**

```ts
declare const entries: <const R>(obj: R) => Array<[keyof R & string, R[keyof R & string]]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L242)

Since v3.17.0