Package: `effect`<br />
Module: `Array`<br />

## Array.removeOption

Delete the element at the specified index, creating a new `Array`,
or return `None` if the index is out of bounds.

**Example**

```ts
import * as assert from "node:assert"
import { Array, Option } from "effect"

const numbers = [1, 2, 3, 4]
const result = Array.removeOption(numbers, 2)
assert.deepStrictEqual(result, Option.some([1, 2, 4]))

const outOfBoundsResult = Array.removeOption(numbers, 5)
assert.deepStrictEqual(outOfBoundsResult, Option.none())
```

**Signature**

```ts
declare const removeOption: { (i: number): <A>(self: Iterable<A>) => Option.Option<Array<A>>; <A>(self: Iterable<A>, i: number): Option.Option<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1361)

Since v3.16.0