Package: `effect`<br />
Module: `Option`<br />

## Option.productMany

Combines a primary `Option` with an iterable of `Option`s into a tuple if
all are `Some`.

**When to use**

- Collecting several `Option`s of the same type into a non-empty tuple

**Behavior**

- All `Some` → `Some([self.value, ...rest])`
- Any `None` → `None`

**Example** (Combining many Options)

```ts
import { Option } from "effect"

const first = Option.some(1)
const rest = [Option.some(2), Option.some(3)]

console.log(Option.productMany(first, rest))
// Output: { _id: 'Option', _tag: 'Some', value: [1, 2, 3] }

console.log(Option.productMany(first, [Option.some(2), Option.none()]))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `product` for combining exactly two
- `all` for tuples, structs, and iterables

**Signature**

```ts
declare const productMany: <A>(self: Option<A>, collection: Iterable<Option<A>>) => Option<[A, ...Array<A>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1712)

Since v2.0.0