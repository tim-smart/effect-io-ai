# startsWith

Returns `true` if the sequence of elements of `searchString` is the
same as the corresponding elements of `s` starting at
position. Otherwise returns false.

Part of the `String` module, imported from `@effect/data/String`.

**Example**

```ts
import * as S from '@effect/data/String'

assert.deepStrictEqual(S.startsWith('abc', 'a'), true)
assert.deepStrictEqual(S.startsWith('bc', 'a'), false)
```

**Signature**

```ts
export declare const startsWith: {
  (searchString: string): (self: string) => boolean
  (self: string, searchString: string): boolean
}
```
