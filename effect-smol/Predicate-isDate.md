Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isDate

Checks whether a value is a `Date`.

When to use:
- You need to guard dates at runtime.

Behavior:
- Pure; does not mutate input.
- Uses `instanceof Date`.

**Example** (Guard Date)

```ts
import { Predicate } from "effect"

const data: unknown = new Date()

console.log(Predicate.isDate(data))
```

See also: `isRegExp`

**Signature**

```ts
declare const isDate: (input: unknown) => input is Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1238)

Since v2.0.0