# compact

Given a record with `Option` values, returns a record with only the `Some` values, with the same keys.

To import and use `compact` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.compact
```

**Example**

```ts
import { compact } from 'effect/ReadonlyRecord'
import { some, none } from 'effect/Option'

assert.deepStrictEqual(compact({ a: some(1), b: none(), c: some(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const compact: <A>(self: ReadonlyRecord<Option.Option<A>>) => Record<string, A>
```
