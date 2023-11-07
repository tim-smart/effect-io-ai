# all

Runs all the provided transactional effects in sequence respecting the
structure provided in input.

Supports multiple arguments, a single argument tuple / array or record /
struct.

To import and use `all` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.all
```

**Signature**

```ts
export declare const all: All.Signature
```
