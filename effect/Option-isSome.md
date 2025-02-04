# isSome

Checks whether an `Option` contains a value (`Some`).

To import and use `isSome` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.isSome
```

**Example**

```ts
import { Option } from "effect"

console.log(Option.isSome(Option.some(1)))
// Output: true

console.log(Option.isSome(Option.none()))
// Output: false
```

**Signature**

```ts
export declare const isSome: <A>(self: Option<A>) => self is Some<A>
```
