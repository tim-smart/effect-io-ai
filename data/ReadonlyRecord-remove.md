# remove

Removes a key from a `ReadonlyRecord` and returns a new `Record`

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { remove } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(remove({ a: 1, b: 2 }, 'a'), { b: 2 })
```

**Signature**

```ts
export declare const remove: {
  (key: string): <A>(self: ReadonlyRecord<A>) => Record<string, A>
  <A>(self: ReadonlyRecord<A>, key: string): Record<string, A>
}
```
