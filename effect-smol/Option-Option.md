Package: `effect`<br />
Module: `Option`<br />

## Option.Option

The `Option` data type represents optional values. An `Option<A>` is either
`Some<A>`, containing a value of type `A`, or `None`, representing absence.

**When to use**

- Representing initial values that may not yet exist
- Returning from partial functions (not defined for all inputs)
- Managing optional fields in data structures

**Example** (Creating and matching Options)

```ts
import { Option } from "effect"

const someValue: Option.Option<number> = Option.some(42)
const noneValue: Option.Option<number> = Option.none()

const result = Option.match(someValue, {
  onNone: () => "No value",
  onSome: (value) => `Value is ${value}`
})

console.log(result)
// Output: "Value is 42"
```

**See**

- `some` for creating a `Some`
- `none` for creating a `None`
- `match` for pattern matching

**Signature**

```ts
type Option<A> = None<A> | Some<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L133)

Since v2.0.0