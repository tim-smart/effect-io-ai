Package: `effect`<br />
Module: `Option`<br />

## Option.fromNullOr

Converts a possibly `null` value into an `Option`, leaving `undefined`
as a valid `Some`.

**When to use**

- When `undefined` is a meaningful value but `null` means absent

**Behavior**

- `null` → `None`
- Any other value (including `undefined`) → `Some`

**Example** (From possibly-null values)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L946)

Since v4.0.0