Package: `effect`<br />
Module: `Option`<br />

## Option.flatMap

Applies a function that returns an `Option` to the value of a `Some`,
flattening the result. Returns `None` if the input is `None`.

**When to use**

- Chaining computations that each may fail (return `None`)
- Sequencing dependent optional operations

**Behavior**

- `Some` → applies `f` to the value and returns its `Option` result
- `None` → returns `None` without calling `f`
- Equivalent to `map` followed by `flatten`

**Example** (Chaining optional lookups)

```ts
import { Option } from "effect"

interface User {
  readonly name: string
  readonly address: Option.Option<{ readonly street: Option.Option<string> }>
}

const user: User = {
  name: "John",
  address: Option.some({ street: Option.some("123 Main St") })
}

const street = user.address.pipe(
  Option.flatMap((addr) => addr.street)
)

console.log(street)
// Output: { _id: 'Option', _tag: 'Some', value: '123 Main St' }
```

**See**

- `map` when `f` returns a plain value
- `andThen` for a more flexible variant
- `flatten` to unwrap a nested `Option<Option<A>>`

**Signature**

```ts
declare const flatMap: { <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1342)

Since v2.0.0