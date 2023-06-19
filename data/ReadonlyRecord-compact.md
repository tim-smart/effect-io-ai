# compact

Given a `ReadonlyRecord` with `Option` values, returns a `Record` with only the `Some` values, with the same keys.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { compact } from '@effect/data/ReadonlyRecord'
import { some, none } from '@effect/data/Option'

assert.deepStrictEqual(compact({ a: some(1), b: none(), c: some(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const compact: <A>(self: ReadonlyRecord<Option<A>>) => Record<string, A>
```
