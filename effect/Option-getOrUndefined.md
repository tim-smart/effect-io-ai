# getOrUndefined

Returns the value contained in the `Option` if it is `Some`; otherwise,
returns `undefined`.

**Details**

This function provides a way to extract the value of an `Option` while
falling back to `undefined` if the `Option` is `None`.

It is particularly useful in scenarios where `undefined` is an acceptable
placeholder for the absence of a value, such as when interacting with APIs or
systems that use `undefined` as a default for missing values.

To import and use `getOrUndefined` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrUndefined
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.getOrUndefined(Option.some(1)))
// Output: 1

console.log(Option.getOrUndefined(Option.none()))
// Output: undefined
```

**Signature**

```ts
export declare const getOrUndefined: <A>(self: Option<A>) => A | undefined
```
