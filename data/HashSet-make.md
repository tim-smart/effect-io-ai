# make

Construct a new `HashSet` from a variable number of values.

To import and use `make` from the "HashSet" module:

```ts
import * as HashSet from '@effect/data/HashSet'

// Can be accessed like this
HashSet.make
```

**Signature**

```ts
export declare const make: <As extends readonly any[]>(...elements: As) => HashSet<As[number]>
```
