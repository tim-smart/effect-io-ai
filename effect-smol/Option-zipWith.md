Package: `effect`<br />
Module: `Option`<br />

## Option.zipWith

Combines two `Option`s using a provided function.

**When to use**

- Merging two optional values into a computed result

**Behavior**

- Both `Some` → applies `f(a, b)` and wraps in `Some`
- Either `None` → `None`

**Example** (Combining with a function)

```ts
import { Option } from "effect"

const person = Option.zipWith(
  Option.some("John"),
  Option.some(25),
  (name, age) => ({ name: name.toUpperCase(), age })
)

console.log(person)
// Output:
// { _id: 'Option', _tag: 'Some', value: { name: 'JOHN', age: 25 } }
```

**See**

- `product` to combine into a tuple instead
- `lift2` to lift a binary function

**Signature**

```ts
declare const zipWith: { <B, A, C>(that: Option<B>, f: (a: A, b: B) => C): (self: Option<A>) => Option<C>; <A, B, C>(self: Option<A>, that: Option<B>, f: (a: A, b: B) => C): Option<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1842)

Since v2.0.0