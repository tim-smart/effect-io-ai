Package: `effect`<br />
Module: `Option`<br />

## Option.toArray

Converts an `Option` into an `Array`.

**When to use**

- Interfacing with array-based APIs
- Spreading optional values into collections

**Behavior**

- `Some` → single-element array `[value]`
- `None` → empty array `[]`

**Example** (Converting to an array)

```ts
import { Option } from "effect"

console.log(Option.toArray(Option.some(1)))
// Output: [1]

console.log(Option.toArray(Option.none()))
// Output: []
```

**See**

- `fromIterable` for the inverse direction

**Signature**

```ts
declare const toArray: <A>(self: Option<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1922)

Since v2.0.0