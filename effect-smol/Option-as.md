Package: `effect`<br />
Module: `Option`<br />

## Option.as

Replaces the value inside a `Some` with a constant, leaving `None` unchanged.

**When to use**

- Preserving presence/absence while discarding the original value

**Behavior**

- `Some` → `Some(b)`
- `None` → `None`

**Example** (Replacing a value)

```ts
import { Option } from "effect"

console.log(Option.as(Option.some(42), "new value"))
// Output: { _id: 'Option', _tag: 'Some', value: 'new value' }

console.log(Option.as(Option.none(), "new value"))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `asVoid` to replace with `undefined`
- `map` for a general transformation

**Signature**

```ts
declare const as: { <B>(b: B): <X>(self: Option<X>) => Option<B>; <X, B>(self: Option<X>, b: B): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1243)

Since v2.0.0