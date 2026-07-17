Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTruthy

Checks whether a value is truthy.

**When to use**

Use when you want a predicate that mirrors JavaScript truthiness and filters
out falsy values like `0`, `""`, and `false`.

**Details**

This uses `!!input` and treats `0`, `""`, `false`, `null`, and `undefined`
as false.

**Example** (Filtering truthy values)

```ts
import { Predicate } from "effect"

const values = [0, 1, "", "ok", false]
const truthy = values.filter(Predicate.isTruthy)

console.log(truthy)
```

**See**

- `isNullish`
- `isNotNullish`

**Signature**

```ts
declare const isTruthy: (input: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L441)

Since v2.0.0