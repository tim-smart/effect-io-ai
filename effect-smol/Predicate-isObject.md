Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObject

Checks whether a value is a plain object (not an array, not `null`).

When to use:
- You need to accept objects but exclude arrays.

Behavior:
- Pure; does not mutate input.
- Uses `typeof input === "object" && input !== null && !Array.isArray(input)`.

**Example** (Guard object)

```ts
import { Predicate } from "effect"

console.log(Predicate.isObject({ a: 1 }))
console.log(Predicate.isObject([1, 2]))
```

See also: `isObjectOrArray`, `isReadonlyObject`

**Signature**

```ts
declare const isObject: (input: unknown) => input is { [x: PropertyKey]: unknown; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1021)

Since v4.0.0