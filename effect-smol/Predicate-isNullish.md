Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNullish

Checks whether a value is `null` or `undefined`.

**When to use**

Use when you want to guard nullish values explicitly.

**Details**

- Pure; does not mutate input.
- Uses `input === null || input === undefined`.

**Example** (Guard nullish)

```ts
import { Predicate } from "effect"

const values = [0, null, "", undefined]
const nullish = values.filter(Predicate.isNullish)

console.log(nullish)
```

**See**

- `isNotNullish`
- `isUndefined`
- `isNull`

**Signature**

```ts
declare const isNullish: <A>(input: A) => input is A & (null | undefined)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L960)

Since v4.0.0