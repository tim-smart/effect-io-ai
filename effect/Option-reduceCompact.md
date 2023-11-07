# reduceCompact

Reduces an `Iterable` of `Option<A>` to a single value of type `B`, elements that are `None` are ignored.

To import and use `reduceCompact` from the "Option" module:

```ts
import * as Option from 'effect/Option'

// Can be accessed like this
Option.reduceCompact
```

**Example**

```ts
import { some, none, reduceCompact } from 'effect/Option'
import { pipe } from 'effect/Function'

const iterable = [some(1), none(), some(2), none()]
assert.deepStrictEqual(
  pipe(
    iterable,
    reduceCompact(0, (b, a) => b + a)
  ),
  3
)
```

**Signature**

```ts
export declare const reduceCompact: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<Option<A>>) => B
  <A, B>(self: Iterable<Option<A>>, b: B, f: (b: B, a: A) => B): B
}
```
