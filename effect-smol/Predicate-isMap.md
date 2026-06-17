Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isMap

Checks whether a value is a `Map`.

**When to use**

Use when you need a `Predicate` runtime guard for `Map` values.

**Details**

Uses `instanceof Map`.

**Example** (Guarding a Map)

```ts
import { Predicate } from "effect"

const data: unknown = new Map([["a", 1]])

if (Predicate.isMap(data)) {
  console.log(data.size)
}
```

**See**

- `isSet`
- `isIterable`

**Signature**

```ts
declare const isMap: (input: unknown) => input is Map<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L505)

Since v2.0.0