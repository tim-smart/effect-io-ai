# isEmpty

Test whether a `string` is empty.

Part of the `String` module, imported from `@effect/data/String`.

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
