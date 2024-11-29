# isEmpty

Determine if an `Iterable` is empty

To import and use `isEmpty` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.isEmpty
undefined

**Example**

```ts
import { isEmpty } from "effect/Iterable"

assert.deepStrictEqual(isEmpty([]), true)
assert.deepStrictEqual(isEmpty([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmpty: <A>(self: Iterable<A>) => self is Iterable<never>
```
