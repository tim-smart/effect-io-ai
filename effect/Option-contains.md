# contains

Returns a function that checks if an `Option` contains a specified value
using the default `Equivalence`.

**Details**

This function allows you to check whether an `Option` contains a specific
value. It uses the default `Equivalence` for equality comparison. If the
`Option` is `Some` and its value is equivalent to the provided value, the
result is `true`. If the `Option` is `None` or the values are not equivalent,
the result is `false`.

To import and use `contains` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.contains
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.some(2).pipe(Option.contains(2)))
// Output: true

console.log(Option.some(1).pipe(Option.contains(2)))
// Output: false

console.log(Option.none().pipe(Option.contains(2)))
// Output: false
```

**Signature**

```ts
export declare const contains: { <A>(a: A): (self: Option<A>) => boolean; <A>(self: Option<A>, a: A): boolean }
```
