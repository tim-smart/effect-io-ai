# fromIterable

Converts an `Iterable` of values into an `Option`. Returns the first value of the `Iterable` wrapped in a `Some`
if the `Iterable` is not empty, otherwise returns `None`.

To import and use `fromIterable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.fromIterable
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.fromIterable([1, 2, 3]), Option.some(1))
assert.deepStrictEqual(Option.fromIterable([]), Option.none())
```

**Signature**

```ts
export declare const fromIterable: <A>(collection: Iterable<A>) => Option<A>
```
