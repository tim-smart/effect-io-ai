Package: `effect`<br />
Module: `String`<br />

## String.length

Calculate the number of characters in a `string`.

**Example**

```ts
import * as assert from "node:assert"
import { String } from "effect"

assert.deepStrictEqual(String.length('abc'), 3)
```

**Signature**

```ts
declare const length: (self: string) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L250)

Since v2.0.0