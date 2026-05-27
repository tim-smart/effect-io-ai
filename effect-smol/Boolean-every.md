Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.every

This utility function is used to check if all the elements in a collection of boolean values are `true`.

**When to use**

Use to check that every boolean in an iterable is `true`.

**Example** (Checking every boolean)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.every([true, true, true]), true)
assert.deepStrictEqual(Boolean.every([true, false, true]), false)
```

**See**

- `some` for checking whether at least one value is `true`
- `ReducerAnd` for reducing booleans with AND through a `Reducer`

**Signature**

```ts
declare const every: (collection: Iterable<boolean>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L444)

Since v2.0.0