# startsWith

Returns `true` if the sequence of elements of `searchString` is the
same as the corresponding elements of `s` starting at
position. Otherwise returns false.

To import and use `startsWith` from the "String" module:

```ts
import * as String from '@effect/data/String'

// Can be accessed like this
String.startsWith
```

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
