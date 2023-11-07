# remove

Removes a key from a record and returns a new record

To import and use `remove` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.remove
```

**Example**

```ts
import { remove } from 'effect/ReadonlyRecord'

assert.deepStrictEqual(remove({ a: 1, b: 2 }, 'a'), { b: 2 })
```

**Signature**

```ts
export declare const remove: {
  (key: string): <A>(self: ReadonlyRecord<A>) => Record<string, A>
  <A>(self: ReadonlyRecord<A>, key: string): Record<string, A>
}
```
