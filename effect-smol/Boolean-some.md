Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.some

This utility function is used to check if at least one of the elements in a collection of boolean values is `true`.

**When to use**

Use to check that at least one boolean in an iterable is `true`.

**Example** (Checking some booleans)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.some([true, false, true]), true)
assert.deepStrictEqual(Boolean.some([false, false, false]), false)
```

**See**

- `every` for checking whether all values are `true`
- `ReducerOr` for reducing booleans with OR through a `Reducer`

**Signature**

```ts
declare const some: (collection: Iterable<boolean>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L476)

Since v2.0.0