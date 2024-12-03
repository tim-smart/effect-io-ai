# fromOption

Converts an `Option` to an array.

To import and use `fromOption` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.fromOption
```

**Example**

```ts
import { Array, Option } from "effect"

assert.deepStrictEqual(Array.fromOption(Option.some(1)), [1])
assert.deepStrictEqual(Array.fromOption(Option.none()), [])
```

**Signature**

```ts
export declare const fromOption: <A>(self: Option<A>) => Array<A>
```
