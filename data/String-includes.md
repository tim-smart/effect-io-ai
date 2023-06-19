# includes

Returns `true` if `searchString` appears as a substring of `self`, at one or more positions that are
greater than or equal to `0`; otherwise, returns `false`.

Part of the `String` module, imported from `@effect/data/String`.

**Example**

```ts
import * as S from '@effect/data/String'

assert.deepStrictEqual(S.includes('abc', 'b'), true)
assert.deepStrictEqual(S.includes('abc', 'd'), false)
```

**Signature**

```ts
export declare const includes: {
  (searchString: string): (self: string) => boolean
  (self: string, searchString: string): boolean
}
```
