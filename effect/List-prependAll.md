## prependAll

Prepends the specified prefix list to the beginning of the specified list.
If either list is non-empty, the result is also a non-empty list.

**Example**

```ts
import * as assert from "node:assert"
import { List } from "effect"

assert.deepStrictEqual(
  List.make(1, 2).pipe(List.prependAll(List.make("a", "b")), List.toArray),
  ["a", "b", 1, 2]
)
```

**Signature**

```ts
declare const prependAll: { <S extends List<any>, T extends List<any>>(that: T): (self: S) => List.OrNonEmpty<S, T, List.Infer<S> | List.Infer<T>>; <A, B>(self: List<A>, that: Cons<B>): Cons<A | B>; <A, B>(self: Cons<A>, that: List<B>): Cons<A | B>; <A, B>(self: List<A>, that: List<B>): List<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L377)

Since v2.0.0