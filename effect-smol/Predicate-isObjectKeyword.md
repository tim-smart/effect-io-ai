Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObjectKeyword

Checks whether a value is an `object` in the JavaScript sense (objects, arrays, functions).

**When to use**

Use when you need a `Predicate` guard that accepts arrays and functions as
well as objects.

**Details**

Returns `true` for arrays and functions, and `false` for `null`.

**Example** (Object keyword)

```ts
import { Predicate } from "effect"

console.log(Predicate.isObjectKeyword(() => 1))
console.log(Predicate.isObjectKeyword(null))
```

**See**

- `isObject`
- `isObjectOrArray`

**Signature**

```ts
declare const isObjectKeyword: (input: unknown) => input is object
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1151)

Since v4.0.0