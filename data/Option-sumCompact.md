# sumCompact

Sum all numbers in an iterable of `Option<number>` ignoring the `None` values.

To import and use `sumCompact` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.sumCompact
```

**Example**

```ts
import { sumCompact, some, none } from '@effect/data/Option'

const iterable = [some(2), none(), some(3), none()]
assert.deepStrictEqual(sumCompact(iterable), 5)
```

**Signature**

```ts
export declare const sumCompact: (self: Iterable<Option<number>>) => number
```
