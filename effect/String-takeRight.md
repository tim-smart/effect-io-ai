# takeRight

Keep the specified number of characters from the end of a string.

If `n` is larger than the available number of characters, the string will
be returned whole.

If `n` is not a positive number, an empty string will be returned.

If `n` is a float, it will be rounded down to the nearest integer.

To import and use `takeRight` from the "String" module:

ts
import \* as String from "effect/String"
// Can be accessed like this
String.takeRight
undefined

**Example**

```ts
import { String } from "effect"

assert.deepStrictEqual(String.takeRight("Hello World", 5), "World")
```

**Signature**

```ts
export declare const takeRight: { (n: number): (self: string) => string; (self: string, n: number): string }
```
