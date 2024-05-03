# fromNullable

Constructs a new `Option` from a nullable type. If the value is `null` or `undefined`, returns `None`, otherwise
returns the value wrapped in a `Some`.

To import and use `fromNullable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.fromNullable
```

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(Option.fromNullable(undefined), Option.none())
assert.deepStrictEqual(Option.fromNullable(null), Option.none())
assert.deepStrictEqual(Option.fromNullable(1), Option.some(1))
```

**Signature**

```ts
export declare const fromNullable: <A>(nullableValue: A) => Option<NonNullable<A>>
```
