# match

Depending on the `Ordering` parameter given to it, returns a value produced by one of the 3 functions provided as parameters.

To import and use `match` from the "Ordering" module:

```ts
import * as Ordering from '@effect/data/Ordering'

// Can be accessed like this
Ordering.match
```

**Example**

```ts
import { match } from '@effect/data/Ordering'
import { constant } from '@effect/data/Function'

const toMessage = match(constant('less than'), constant('equal'), constant('greater than'))

assert.deepStrictEqual(toMessage(-1), 'less than')
assert.deepStrictEqual(toMessage(0), 'equal')
assert.deepStrictEqual(toMessage(1), 'greater than')
```

**Signature**

```ts
export declare const match: {
  <A, B, C = B>(onLessThan: LazyArg<A>, onEqual: LazyArg<B>, onGreaterThan: LazyArg<C>): (self: Ordering) => A | B | C
  <A, B, C = B>(o: Ordering, onLessThan: LazyArg<A>, onEqual: LazyArg<B>, onGreaterThan: LazyArg<C>): A | B | C
}
```
