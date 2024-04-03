# getSomes

Retrieves the `Some` values from an `Iterable` of `Option`s.

To import and use `getSomes` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.getSomes
```

**Example**

```ts
import { getSomes } from "effect/Iterable"
import { some, none } from "effect/Option"

assert.deepStrictEqual(Array.from(getSomes([some(1), none(), some(2)])), [1, 2])
```

**Signature**

```ts
export declare const getSomes: <A>(self: Iterable<Option<A>>) => Iterable<A>
```
