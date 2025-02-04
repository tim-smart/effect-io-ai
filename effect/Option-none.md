# none

Represents the absence of a value by creating an empty `Option`.

`Option.none` returns an `Option<never>`, which is a subtype of `Option<A>`.
This means you can use it in place of any `Option<A>` regardless of the type
`A`.

To import and use `none` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.none
```

**Example**

```ts
// Title: Creating an Option with No Value
import { Option } from "effect"

// An Option holding no value
//
//      ┌─── Option<never>
//      ▼
const noValue = Option.none()

console.log(noValue)
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const none: <A = never>() => Option<A>
```
