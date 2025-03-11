## none

Represents the absence of a value by creating an empty `Option`.

`Option.none` returns an `Option<never>`, which is a subtype of `Option<A>`.
This means you can use it in place of any `Option<A>` regardless of the type
`A`.

**Example**

```ts
// Title: Creating an Option with No Value
import { Option } from "effect"

// An Option holding no value
//
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L162)

Since v2.0.0