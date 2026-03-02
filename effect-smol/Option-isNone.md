Package: `effect`<br />
Module: `Option`<br />

## Option.isNone

Checks whether an `Option` is `None` (absent).

**When to use**

- Branching on absence before accessing `.value`

**Behavior**

- Acts as a type guard, narrowing to `None<A>`

**Example** (Checking for None)

```ts
import { Option } from "effect"

console.log(Option.isNone(Option.some(1)))
// Output: false

console.log(Option.isNone(Option.none()))
// Output: true
```

**See**

- `isSome` for the opposite check.

**Signature**

```ts
declare const isNone: <A>(self: Option<A>) => self is None<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L400)

Since v2.0.0