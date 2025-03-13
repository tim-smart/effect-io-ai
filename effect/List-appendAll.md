Package: `effect`<br />
Module: `List`<br />

## List.appendAll

Concatenates two lists, combining their elements.
If either list is non-empty, the result is also a non-empty list.

**Example**

```ts
import * as assert from "node:assert"
import { List } from "effect"

assert.deepStrictEqual(
  List.make(1, 2).pipe(List.appendAll(List.make("a", "b")), List.toArray),
  [1, 2, "a", "b"]
)
```

**Signature**

```ts
declare const appendAll: { <S extends List<any>, T extends List<any>>(that: T): (self: S) => List.OrNonEmpty<S, T, List.Infer<S> | List.Infer<T>>; <A, B>(self: List<A>, that: Cons<B>): Cons<A | B>; <A, B>(self: Cons<A>, that: List<B>): Cons<A | B>; <A, B>(self: List<A>, that: List<B>): List<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L341)

Since v2.0.0