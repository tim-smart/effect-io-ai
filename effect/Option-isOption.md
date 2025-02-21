# isOption

Determines whether the given value is an `Option`.

**Details**

This function checks if a value is an instance of `Option`. It returns `true`
if the value is either `Option.some` or `Option.none`, and `false` otherwise.
This is particularly useful when working with unknown values or when you need
to ensure type safety in your code.

To import and use `isOption` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.isOption
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.isOption(Option.some(1)))
// Output: true

console.log(Option.isOption(Option.none()))
// Output: true

console.log(Option.isOption({}))
// Output: false
```

**Signature**

```ts
export declare const isOption: (input: unknown) => input is Option<unknown>
```
