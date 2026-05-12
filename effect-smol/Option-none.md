Package: `effect`<br />
Module: `Option`<br />

## Option.none

Creates an `Option` representing the absence of a value.

**When to use**

- Representing a missing or uninitialized value
- Returning "no result" from a function

**Behavior**

- Returns `Option<never>`, which is a subtype of `Option<A>` for any `A`
- Always returns the same singleton instance

**Example** (Creating an empty Option)

```ts
import { Option } from "effect"

//      ┌─── Option<never>
//      ▼
const noValue = Option.none()

console.log(noValue)
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `some` for the opposite operation.

**Signature**

```ts
declare const none: <A = never>() => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L310)

Since v2.0.0