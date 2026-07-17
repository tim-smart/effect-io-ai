Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isSet

Checks whether a value is a `Set`.

**When to use**

Use when you need a `Predicate` runtime guard for `Set` values.

**Details**

Uses `instanceof Set`.

**Example** (Guarding a Set)

```ts
import { Predicate } from "effect"

const data: unknown = new Set([1, 2])

if (Predicate.isSet(data)) {
  console.log(data.size)
}
```

**See**

- `isMap`
- `isIterable`

**Signature**

```ts
declare const isSet: (input: unknown) => input is Set<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L473)

Since v2.0.0