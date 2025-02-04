# fromNullable

Converts a nullable value into an `Option`. Returns `None` if the value is
`null` or `undefined`, otherwise wraps the value in a `Some`.

To import and use `fromNullable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.fromNullable
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.fromNullable(undefined))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullable(null))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullable(1))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**Signature**

```ts
export declare const fromNullable: <A>(nullableValue: A) => Option<NonNullable<A>>
```
