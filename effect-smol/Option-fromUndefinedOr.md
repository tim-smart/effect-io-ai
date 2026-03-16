Package: `effect`<br />
Module: `Option`<br />

## Option.fromUndefinedOr

Converts a possibly `undefined` value into an `Option`, leaving `null`
as a valid `Some`.

**When to use**

- When `null` is a meaningful value but `undefined` means absent

**Behavior**

- `undefined` → `None`
- Any other value (including `null`) → `Some`

**Example** (From possibly-undefined values)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L901)

Since v4.0.0