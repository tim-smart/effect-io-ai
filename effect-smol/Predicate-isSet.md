Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isSet

Checks whether a value is a `Set`.

When to use:
- You need a runtime guard for `Set` values.

Behavior:
- Pure; does not mutate input.
- Uses `instanceof Set`.

**Example** (Guard a Set)

```ts
import { Predicate } from "effect"

const data: unknown = new Set([1, 2])

if (Predicate.isSet(data)) {
  console.log(data.size)
}
```

See also: `isMap`, `isIterable`

**Signature**

```ts
declare const isSet: (input: unknown) => input is Set<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L482)

Since v2.0.0