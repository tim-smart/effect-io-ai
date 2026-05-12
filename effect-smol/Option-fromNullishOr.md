Package: `effect`<br />
Module: `Option`<br />

## Option.fromNullishOr

Converts a nullable value (`null` or `undefined`) into an `Option`.

**When to use**

- Bridging from nullable APIs to `Option`
- Wrapping values that may be `null` or `undefined`

**Behavior**

- `null` or `undefined` → `None`
- Any other value → `Some` (typed as `NonNullable<A>`)

**Example** (From nullable values)

```ts
import { Option } from "effect"

console.log(Option.fromNullishOr(undefined))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullishOr(null))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullishOr(1))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**See**

- `fromNullOr` to only treat `null` as absent
- `fromUndefinedOr` to only treat `undefined` as absent
- `liftNullishOr` to lift a nullable-returning function

**Signature**

```ts
declare const fromNullishOr: <A>(a: A) => Option<NonNullable<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L870)

Since v2.0.0