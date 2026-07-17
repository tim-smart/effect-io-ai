Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.some

Checks whether at least one boolean in a collection is `true`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L429)

Since v2.0.0