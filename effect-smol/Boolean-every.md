Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.every

This utility function is used to check if all the elements in a collection of boolean values are `true`.

**Example**

```ts
import { every } from "effect/Boolean"
import * as assert from "node:assert"

assert.deepStrictEqual(every([true, true, true]), true)
assert.deepStrictEqual(every([true, false, true]), false)
```

**Signature**

```ts
declare const every: (collection: Iterable<boolean>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L308)

Since v2.0.0