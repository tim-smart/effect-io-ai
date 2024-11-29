# takeLeft

Keep the specified number of characters from the start of a string.

If `n` is larger than the available number of characters, the string will
be returned whole.

If `n` is not a positive number, an empty string will be returned.

If `n` is a float, it will be rounded down to the nearest integer.

To import and use `takeLeft` from the "String" module:

ts
import \* as String from "effect/String"
// Can be accessed like this
String.takeLeft
undefined

**Example**

```ts
import { String } from "effect"

assert.deepStrictEqual(String.takeLeft("Hello World", 5), "Hello")
```

**Signature**

```ts
export declare const takeLeft: { (n: number): (self: string) => string; (self: string, n: number): string }
```
