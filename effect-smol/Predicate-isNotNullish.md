Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotNullish

Checks whether a value is not `null` and not `undefined`.

When to use:
- You want to filter out nullish values but keep other falsy ones.

Behavior:
- Pure; does not mutate input.
- Uses `input != null`.

**Example** (Filter non-nullish)

```ts
import { Predicate } from "effect"

const values = [0, null, "", undefined]
const present = values.filter(Predicate.isNotNullish)

console.log(present)
```

See also: `isNullish`, `isNotNull`, `isNotUndefined`

**Signature**

```ts
declare const isNotNullish: <A>(input: A) => input is NonNullable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L911)

Since v4.0.0