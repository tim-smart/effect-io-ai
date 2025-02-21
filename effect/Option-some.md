# some

Wraps the given value into an `Option` to represent its presence.

To import and use `some` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.some
```

**Example**

```ts
// Title: Creating an Option with a Value
import { Option } from "effect"

// An Option holding the number 1
//
//      ┌─── Option<number>
//      ▼
const value = Option.some(1)

console.log(value)
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**Signature**

```ts
export declare const some: <A>(value: A) => Option<A>
```
