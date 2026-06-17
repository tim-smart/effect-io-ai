Package: `effect`<br />
Module: `Option`<br />

## Option.fromNullishOr

Converts a nullable value (`null` or `undefined`) into an `Option`.

**When to use**

Use when you need JavaScript nullish values to become absence at an API
boundary while all other values, including falsy ones, remain present.

**Details**

- `null` or `undefined` → `None`
- Any other value → `Some` (typed as `NonNullable<A>`)

**Example** (Converting nullable values to an Option)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L821)

Since v4.0.0