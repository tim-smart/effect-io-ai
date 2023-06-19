# takeRight

Keep the specified number of characters from the end of a string.

If `n` is larger than the available number of characters, the string will
be returned whole.

If `n` is not a positive number, an empty string will be returned.

If `n` is a float, it will be rounded down to the nearest integer.

Part of the `String` module, imported from `@effect/data/String`.

**Example**

```ts
import * as S from '@effect/data/String'

assert.deepStrictEqual(S.takeRight('Hello World', 5), 'World')
```

**Signature**

```ts
export declare const takeRight: { (n: number): (self: string) => string; (self: string, n: number): string }
```
