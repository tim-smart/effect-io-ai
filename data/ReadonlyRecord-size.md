# size

Returns the number of key/value pairs in a `ReadonlyRecord`.

To import and use `size` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.size
```

**Example**

```ts
import { size } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(size({ a: 'a', b: 1, c: true }), 3)
```

**Signature**

```ts
export declare const size: <A>(self: ReadonlyRecord<A>) => number
```
