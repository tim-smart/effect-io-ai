Package: `effect`<br />
Module: `Option`<br />

## Option.isOption

Determines whether the given value is an `Option`.

**When to use**

- Validating unknown values at runtime boundaries
- Type-narrowing in union types

**Behavior**

- Returns `true` for both `Some` and `None` instances
- Acts as a type guard, narrowing the input to `Option<unknown>`

**Example** (Checking if a value is an Option)

```ts
import { Option } from "effect"

console.log(Option.isOption(Option.some(1)))
// Output: true

console.log(Option.isOption(Option.none()))
// Output: true

console.log(Option.isOption({}))
// Output: false
```

**See**

- `isNone` to check for `None` specifically
- `isSome` to check for `Some` specifically

**Signature**

```ts
declare const isOption: (input: unknown) => input is Option<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L379)

Since v2.0.0