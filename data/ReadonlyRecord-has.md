# has

Check if a given `key` exists in a `ReadonlyRecord`.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { has } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(has({ a: 1, b: 2 }, 'a'), true)
assert.deepStrictEqual(has({ a: 1, b: 2 }, 'c'), false)
```

**Signature**

```ts
export declare const has: {
  (key: string): <A>(self: ReadonlyRecord<A>) => boolean
  <A>(self: ReadonlyRecord<A>, key: string): boolean
}
```
