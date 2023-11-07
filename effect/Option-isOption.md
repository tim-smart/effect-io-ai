# isOption

Tests if a value is a `Option`.

To import and use `isOption` from the "Option" module:

```ts
import * as Option from 'effect/Option'

// Can be accessed like this
Option.isOption
```

**Example**

```ts
import { some, none, isOption } from 'effect/Option'

assert.deepStrictEqual(isOption(some(1)), true)
assert.deepStrictEqual(isOption(none()), true)
assert.deepStrictEqual(isOption({}), false)
```

**Signature**

```ts
export declare const isOption: (input: unknown) => input is Option<unknown>
```
