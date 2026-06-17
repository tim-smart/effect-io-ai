Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isReadonlyObject

Checks whether a value is a non-null, non-array object and narrows it to a
readonly indexable object type.

**When to use**

Use to narrow unknown input to a readonly view of a non-null, non-array
object with a `Predicate` guard.

**Details**

Readonly-ness is a TypeScript type-level view; it is not observable at
runtime. This delegates to `isObject`, so class instances and built-in object
instances are accepted.

**Example** (Checking readonly objects)

```ts
import { Predicate } from "effect"

const data: unknown = { a: 1 }

console.log(Predicate.isReadonlyObject(data))
```

**See**

- `isObject`

**Signature**

```ts
declare const isReadonlyObject: (input: unknown) => input is { readonly [x: PropertyKey]: unknown; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1066)

Since v4.0.0