Package: `effect`<br />
Module: `Option`<br />

## Option.product

Combines two `Option`s into a `Some` containing a tuple `[A, B]` if both
are `Some`.

**When to use**

- Pairing two optional values together

**Behavior**

- Both `Some` → `Some([a, b])`
- Either `None` → `None`

**Example** (Pairing two Options)

```ts
import { Option } from "effect"

console.log(Option.product(Option.some("hello"), Option.some(42)))
// Output: { _id: 'Option', _tag: 'Some', value: ['hello', 42] }

console.log(Option.product(Option.none(), Option.some(42)))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `zipWith` to combine with a function instead of a tuple
- `all` to combine many `Option`s

**Signature**

```ts
declare const product: <A, B>(self: Option<A>, that: Option<B>) => Option<[A, B]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1675)

Since v2.0.0