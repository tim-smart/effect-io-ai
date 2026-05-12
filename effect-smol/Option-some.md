Package: `effect`<br />
Module: `Option`<br />

## Option.some

Wraps the given value into an `Option` to represent its presence.

**When to use**

- Wrapping a known-present value as `Option`
- Returning a successful result from a partial function

**Behavior**

- Always returns `Some<A>`
- Does not filter `null` or `undefined`; use `fromNullishOr` for that

**Example** (Wrapping a value)

```ts
import { Option } from "effect"

//      ┌─── Option<number>
//      ▼
const value = Option.some(1)

console.log(value)
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**See**

- `none` for the opposite operation.

**Signature**

```ts
declare const some: <A>(value: A) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L343)

Since v2.0.0