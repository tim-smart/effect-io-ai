# length

Calculate the number of characters in a `string`.

To import and use `length` from the "String" module:

```ts
import * as String from '@effect/data/String'

// Can be accessed like this
String.length
```

**Example**

```ts
import * as S from '@effect/data/String'

assert.deepStrictEqual(S.length('abc'), 3)
```

**Signature**

```ts
export declare const length: (self: string) => number
```
