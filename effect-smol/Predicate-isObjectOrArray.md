Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObjectOrArray

Checks whether a value is an object or an array (non-null object).

When to use:
- You want to accept plain objects and arrays, but not `null`.

Behavior:
- Pure; does not mutate input.
- Uses `typeof input === "object" && input !== null`.
- Includes arrays.

**Example** (Object or array)

```ts
import { Predicate } from "effect"

console.log(Predicate.isObjectOrArray([]))
```

See also: `isObject`, `isObjectKeyword`

**Signature**

```ts
declare const isObjectOrArray: (input: unknown) => input is { [x: PropertyKey]: unknown; } | Array<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L993)

Since v4.0.0