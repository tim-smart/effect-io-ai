# appendElement

Appends an element to the end of a tuple wrapped in an `Option` type.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.appendElement(O.some([1, 2]), O.some(3)), O.some([1, 2, 3]))
assert.deepStrictEqual(O.appendElement(O.some([1, 2]), O.none()), O.none())
```

**Signature**

```ts
export declare const appendElement: {
  <A extends readonly any[], B>(self: Option<A>, that: Option<B>): Option<[...A, B]>
  <B>(that: Option<B>): <A extends readonly any[]>(self: Option<A>) => Option<[...A, B]>
}
```
