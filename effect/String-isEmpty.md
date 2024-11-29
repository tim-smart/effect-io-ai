# isEmpty

Test whether a `string` is empty.

To import and use `isEmpty` from the "String" module:

ts
import \* as String from "effect/String"
// Can be accessed like this
String.isEmpty
undefined

**Example**

```ts
import { String } from "effect"

assert.deepStrictEqual(String.isEmpty(""), true)
assert.deepStrictEqual(String.isEmpty("a"), false)
```

**Signature**

```ts
export declare const isEmpty: (self: string) => self is ""
```
