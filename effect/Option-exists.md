# exists

Check if a value in an `Option` type meets a certain predicate.

To import and use `exists` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.exists
```

**Example**

```ts
import { some, none, exists } from "effect/Option"
import { pipe } from "effect/Function"

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
