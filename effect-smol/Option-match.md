Package: `effect`<br />
Module: `Option`<br />

## Option.match

Pattern-matches on an `Option`, handling both `None` and `Some` cases.

**When to use**

- Exhaustively handling both branches in one expression
- Transforming an `Option` into a plain value

**Behavior**

- If `None`, calls `onNone` and returns its result
- If `Some`, calls `onSome` with the value and returns its result
- Supports the `dual` API (data-last and data-first)

**Example** (Matching on an Option)

```ts
import { Option } from "effect"

const message = Option.match(Option.some(1), {
  onNone: () => "Option is empty",
  onSome: (value) => `Option has a value: ${value}`
})

console.log(message)
// Output: "Option has a value: 1"
```

**See**

- `getOrElse` for unwrapping with a default

**Signature**

```ts
declare const match: { <B, A, C = B>(options: { readonly onNone: LazyArg<B>; readonly onSome: (a: A) => C; }): (self: Option<A>) => B | C; <A, B, C = B>(self: Option<A>, options: { readonly onNone: LazyArg<B>; readonly onSome: (a: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L474)

Since v2.0.0