## isNone

Checks whether an `Option` represents the absence of a value (`None`).

**Example**

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L237)

Since v2.0.0