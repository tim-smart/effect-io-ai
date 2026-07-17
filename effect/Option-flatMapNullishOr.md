Package: `effect`<br />
Module: `Option`<br />

## Option.flatMapNullishOr

Combines `flatMap` with `fromNullishOr`: applies a function that
may return `null`/`undefined` to the value of a `Some`.

**When to use**

Use when you need to chain optional computations that use `null` or
`undefined` instead of `Option`, such as nested property access.

**Details**

- `None` → `None`
- `Some` → applies `f`, then wraps via `fromNullishOr`

**Example** (Navigating optional properties)

```ts
import { Option } from "effect"

interface Employee {
  company?: { address?: { street?: { name?: string } } }
}

const emp: Employee = {
  company: { address: { street: { name: "high street" } } }
}

console.log(
  Option.some(emp).pipe(
    Option.flatMapNullishOr((e) => e.company?.address?.street?.name)
  )
)
// Output: { _id: 'Option', _tag: 'Some', value: 'high street' }
```

**See**

- `flatMap` when the function already returns `Option`
- `fromNullishOr` for single-value conversion

**Signature**

```ts
declare const flatMapNullishOr: { <A, B>(f: (a: A) => B): (self: Option<A>) => Option<NonNullable<B>>; <A, B>(self: Option<A>, f: (a: A) => B): Option<NonNullable<B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1404)

Since v4.0.0