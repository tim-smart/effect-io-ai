Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.hasProperty

Checks whether a value has a given property key.

When to use:
- You need to guard property access on `unknown` values.
- You want a simple structural guard for objects.

Behavior:
- Pure; does not mutate input.
- Uses the `in` operator and `isObjectKeyword`.
- Does not check property value types.

**Example** (Guard property)

```ts
import { Predicate } from "effect"

const hasName = Predicate.hasProperty("name")
const data: unknown = { name: "Ada" }

if (hasName(data)) {
  console.log(data.name)
}
```

See also: `isTagged`, `isObjectKeyword`

**Signature**

```ts
declare const hasProperty: { <P extends PropertyKey>(property: P): (self: unknown) => self is { [K in P]: unknown; }; <P extends PropertyKey>(self: unknown, property: P): self is { [K in P]: unknown; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1112)

Since v2.0.0