# getSomes

Retrieves the `Some` values from an `Iterable` of `Option`s.

To import and use `getSomes` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.getSomes
undefined

**Example**

```ts
import { Iterable, Option } from "effect"

assert.deepStrictEqual(Array.from(Iterable.getSomes([Option.some(1), Option.none(), Option.some(2)])), [1, 2])
```

**Signature**

```ts
export declare const getSomes: <A>(self: Iterable<Option<A>>) => Iterable<A>
```
