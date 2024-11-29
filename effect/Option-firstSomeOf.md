# firstSomeOf

Given an `Iterable` collection of `Option`s, returns the first `Some` found in the collection.

To import and use `firstSomeOf` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.firstSomeOf
undefined

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.firstSomeOf([Option.none(), Option.some(1), Option.some(2)]), Option.some(1))
```

**Signature**

```ts
export declare const firstSomeOf: <T, C extends Iterable<Option<T>> = Iterable<Option<T>>>(
  collection: C
) => [C] extends [Iterable<Option<infer A>>] ? Option<A> : never
```
