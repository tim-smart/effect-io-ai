# size

Returns the number of key/value pairs in a `ReadonlyRecord`.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { size } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(size({ a: 'a', b: 1, c: true }), 3)
```

**Signature**

```ts
export declare const size: <A>(self: ReadonlyRecord<A>) => number
```
