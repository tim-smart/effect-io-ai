Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObjectKeyword

Checks whether a value is an `object` in the JavaScript sense (objects, arrays, functions).

When to use:
- You want to accept arrays and functions as well as objects.

Behavior:
- Pure; does not mutate input.
- Returns `true` for arrays and functions, `false` for `null`.

**Example** (Object keyword)

```ts
import { Predicate } from "effect"

console.log(Predicate.isObjectKeyword(() => 1))
console.log(Predicate.isObjectKeyword(null))
```

See also: `isObject`, `isObjectOrArray`

**Signature**

```ts
declare const isObjectKeyword: (input: unknown) => input is object
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1078)

Since v2.0.0