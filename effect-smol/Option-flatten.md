Package: `effect`<br />
Module: `Option`<br />

## Option.flatten

Flattens a nested `Option<Option<A>>` into `Option<A>`.

**When to use**

- Removing one layer of `Option` nesting

**Behavior**

- `Some(Some(value))` → `Some(value)`
- `Some(None)` → `None`
- `None` → `None`

**Example** (Flattening nested Options)

```ts
import { Option } from "effect"

console.log(Option.flatten(Option.some(Option.some("value"))))
// Output: { _id: 'Option', _tag: 'Some', value: 'value' }

console.log(Option.flatten(Option.some(Option.none())))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `flatMap` which is `map` + `flatten`

**Signature**

```ts
declare const flatten: <A>(self: Option<Option<A>>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1497)

Since v2.0.0