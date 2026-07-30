Package: `effect`<br />
Module: `Ordering`<br />

## Ordering.match

Depending on the `Ordering` parameter given to it, returns a value produced by one of the 3 functions provided as parameters.

**Example**

```ts
import * as assert from "node:assert"
import { Ordering } from "effect"
import { constant } from "effect/Function"

const toMessage = Ordering.match({
  onLessThan: constant('less than'),
  onEqual: constant('equal'),
  onGreaterThan: constant('greater than')
})

assert.deepStrictEqual(toMessage(-1), "less than")
assert.deepStrictEqual(toMessage(0), "equal")
assert.deepStrictEqual(toMessage(1), "greater than")
```

**Signature**

```ts
declare const match: { <A, B, C = B>(options: { readonly onLessThan: LazyArg<A>; readonly onEqual: LazyArg<B>; readonly onGreaterThan: LazyArg<C>; }): (self: Ordering) => A | B | C; <A, B, C = B>(o: Ordering, options: { readonly onLessThan: LazyArg<A>; readonly onEqual: LazyArg<B>; readonly onGreaterThan: LazyArg<C>; }): A | B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Ordering.ts#L53)

Since v2.0.0