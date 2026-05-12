Package: `effect`<br />
Module: `Option`<br />

## Option.isSome

Checks whether an `Option` contains a value (`Some`).

**When to use**

- Branching on presence before accessing `.value`

**Behavior**

- Acts as a type guard, narrowing to `Some<A>`

**Example** (Checking for Some)

```ts
import { Option } from "effect"

console.log(Option.isSome(Option.some(1)))
// Output: true

console.log(Option.isSome(Option.none()))
// Output: false
```

**See**

- `isNone` for the opposite check.

**Signature**

```ts
declare const isSome: <A>(self: Option<A>) => self is Some<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L439)

Since v2.0.0