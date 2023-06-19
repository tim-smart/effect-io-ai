# includesWithPosition

Returns `true` if `searchString` appears as a substring of `self`, at one or more positions that are
greater than or equal to `position`; otherwise, returns `false`.

Part of the `String` module, imported from `@effect/data/String`.

**Example**

```ts
import * as S from '@effect/data/String'

assert.deepStrictEqual(S.includesWithPosition('abc', 'b', 1), true)
assert.deepStrictEqual(S.includesWithPosition('abc', 'a', 1), false)
```

**Signature**

```ts
export declare const includesWithPosition: {
  (searchString: string, position: number): (self: string) => boolean
  (self: string, searchString: string, position: number): boolean
}
```
