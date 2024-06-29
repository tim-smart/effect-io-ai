# firstSomeOf

Given an `Iterable` collection of `Option`s, returns the first `Some` found in the collection.

To import and use `firstSomeOf` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.firstSomeOf
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.firstSomeOf([Option.none(), Option.some(1), Option.some(2)]), Option.some(1))
```

**Signature**

```ts
export declare const firstSomeOf: <A>(collection: Iterable<Option<A>>) => Option<A>
```
