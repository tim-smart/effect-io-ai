Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isReadonlyObject

Checks whether a value is a non-null, non-array object and narrows it to a
readonly indexable object type.

Readonly-ness is a TypeScript type-level view; it is not observable at
runtime. This delegates to `isObject`, so class instances and built-in object
instances are accepted.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1043)

Since v4.0.0