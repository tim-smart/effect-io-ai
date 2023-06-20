# isEmpty

Test whether a `string` is empty.

To import and use `isEmpty` from the "String" module:

```ts
import * as String from '@effect/data/String'

// Can be accessed like this
String.isEmpty
```

**Example**

```ts
import * as S from '@effect/data/String'

assert.deepStrictEqual(S.isEmpty(''), true)
assert.deepStrictEqual(S.isEmpty('a'), false)
```

**Signature**

```ts
export declare const isEmpty: (self: string) => self is ''
```
