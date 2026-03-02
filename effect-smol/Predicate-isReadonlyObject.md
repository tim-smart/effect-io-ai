Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isReadonlyObject

Checks whether a value is a readonly object.

When to use:
- You need a guard for object-like values and do not care about mutability.

Behavior:
- Pure; does not mutate input.
- Delegates to `isObject`.

**Example** (Readonly object)

```ts
import { Predicate } from "effect"

const data: unknown = { a: 1 }

console.log(Predicate.isReadonlyObject(data))
```

See also: `isObject`

**Signature**

```ts
declare const isReadonlyObject: (input: unknown) => input is { readonly [x: PropertyKey]: unknown; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1050)

Since v4.0.0