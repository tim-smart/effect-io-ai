Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isMap

Checks whether a value is a `Map`.

When to use:
- You need a runtime guard for `Map` values.

Behavior:
- Pure; does not mutate input.
- Uses `instanceof Map`.

**Example** (Guard a Map)

```ts
import { Predicate } from "effect"

const data: unknown = new Map([["a", 1]])

if (Predicate.isMap(data)) {
  console.log(data.size)
}
```

See also: `isSet`, `isIterable`

**Signature**

```ts
declare const isMap: (input: unknown) => input is Map<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L513)

Since v2.0.0