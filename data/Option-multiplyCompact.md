# multiplyCompact

Multiply all numbers in an iterable of `Option<number>` ignoring the `None` values.

To import and use `multiplyCompact` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.multiplyCompact
```

**Example**

```ts
import { multiplyCompact, some, none } from '@effect/data/Option'

const iterable = [some(2), none(), some(3), none()]
assert.deepStrictEqual(multiplyCompact(iterable), 6)
```

**Signature**

```ts
export declare const multiplyCompact: (self: Iterable<Option<number>>) => number
```
