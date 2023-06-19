# exists

Check if a value in an `Option` type meets a certain predicate.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, exists } from '@effect/data/Option'
import { pipe } from '@effect/data/Function'

const isEven = (n: number) => n % 2 === 0

assert.deepStrictEqual(pipe(some(2), exists(isEven)), true)
assert.deepStrictEqual(pipe(some(1), exists(isEven)), false)
assert.deepStrictEqual(pipe(none(), exists(isEven)), false)
```

**Signature**

```ts
export declare const exists: {
  <A>(predicate: Predicate<A>): (self: Option<A>) => boolean
  <A>(self: Option<A>, predicate: Predicate<A>): boolean
}
```
