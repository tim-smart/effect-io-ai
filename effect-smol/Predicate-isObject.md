Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObject

Checks whether a value is a non-null object value that is not an array.

**When to use**

Use to narrow unknown input to a non-null, non-array object.

**Details**

This is a structural runtime check using `typeof input === "object"`, so it
also accepts object instances such as `Date`, `Map`, class instances, and
typed arrays. It excludes `null` and arrays.

**Example** (Guard object)

```ts
import { Predicate } from "effect"

console.log(Predicate.isObject({ a: 1 }))
console.log(Predicate.isObject([1, 2]))
```

**See**

- `isObjectOrArray`
- `isReadonlyObject`

**Signature**

```ts
declare const isObject: (input: unknown) => input is { [x: PropertyKey]: unknown; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1086)

Since v2.0.0