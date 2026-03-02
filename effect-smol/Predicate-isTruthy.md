Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTruthy

Checks whether a value is truthy.

When to use:
- You want a predicate that mirrors JavaScript truthiness.
- You need to filter out falsy values like `0`, "", and `false`.

Behavior:
- Pure; does not mutate input.
- Uses `!!input` under the hood.
- Treats `0`, "", `false`, `null`, and `undefined` as false.

**Example** (Filter truthy)

```ts
import { Predicate } from "effect"

const values = [0, 1, "", "ok", false]
const truthy = values.filter(Predicate.isTruthy)

console.log(truthy)
```

See also: `isNullish`, `isNotNullish`

**Signature**

```ts
declare const isTruthy: (input: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L451)

Since v2.0.0