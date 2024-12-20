# isOption

Checks if a given value is an `Option` value.

To import and use `isOption` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.isOption
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.isOption(Option.some(1)), true)
assert.deepStrictEqual(Option.isOption(Option.none()), true)
assert.deepStrictEqual(Option.isOption({}), false)
```

**Signature**

```ts
export declare const isOption: (input: unknown) => input is Option<unknown>
```
