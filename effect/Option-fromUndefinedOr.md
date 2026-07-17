Package: `effect`<br />
Module: `Option`<br />

## Option.fromUndefinedOr

Converts a possibly `undefined` value into an `Option`, leaving `null`
as a valid `Some`.

**When to use**

Use when you want to treat only `undefined` as absent while preserving `null`
as a meaningful value.

**Details**

- `undefined` → `None`
- Any other value (including `null`) → `Some`

**Example** (Converting possibly undefined values to an Option)

```ts
import { Option } from "effect"

console.log(Option.fromUndefinedOr(undefined))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromUndefinedOr(null))
// Output: { _id: 'Option', _tag: 'Some', value: null }

console.log(Option.fromUndefinedOr(42))
// Output: { _id: 'Option', _tag: 'Some', value: 42 }
```

**See**

- `fromNullishOr` to treat both `null` and `undefined` as absent
- `fromNullOr` to only treat `null` as absent

**Signature**

```ts
declare const fromUndefinedOr: <A>(a: A) => Option<Exclude<A, undefined>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L860)

Since v4.0.0