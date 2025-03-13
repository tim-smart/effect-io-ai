Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.some

This utility function is used to check if at least one of the elements in a collection of boolean values is `true`.

**Example**

```ts
import * as assert from "node:assert"
import { some } from "effect/Boolean"

assert.deepStrictEqual(some([true, false, true]), true)
assert.deepStrictEqual(some([false, false, false]), false)
```

**Signature**

```ts
declare const some: (collection: Iterable<boolean>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L280)

Since v2.0.0