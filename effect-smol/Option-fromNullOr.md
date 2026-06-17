Package: `effect`<br />
Module: `Option`<br />

## Option.fromNullOr

Converts a possibly `null` value into an `Option`, leaving `undefined`
as a valid `Some`.

**When to use**

Use when you want to treat only `null` as absent while preserving
`undefined` as a meaningful value.

**Details**

- `null` → `None`
- Any other value (including `undefined`) → `Some`

**Example** (Converting possibly null values to an Option)

```ts
import { Option } from "effect"

console.log(Option.fromNullOr(null))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullOr(undefined))
// Output: { _id: 'Option', _tag: 'Some', value: undefined }

console.log(Option.fromNullOr(42))
// Output: { _id: 'Option', _tag: 'Some', value: 42 }
```

**See**

- `fromNullishOr` to treat both `null` and `undefined` as absent
- `fromUndefinedOr` to only treat `undefined` as absent

**Signature**

```ts
declare const fromNullOr: <A>(a: A) => Option<Exclude<A, null>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L899)

Since v4.0.0