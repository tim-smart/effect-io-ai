Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.prependAll

Prepends the specified prefix iterable to the beginning of the specified iterable.

**Example**

```ts
import * as assert from "node:assert"
import { Iterable } from "effect"

assert.deepStrictEqual(
  Array.from(Iterable.prependAll([1, 2], ["a", "b"])),
  ["a", "b", 1, 2]
)
```

**Signature**

```ts
declare const prependAll: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L155)

Since v2.0.0