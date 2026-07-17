Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isIterable

Checks whether a value is iterable.

**When to use**

Use when you need a `Predicate` guard before iterating an unknown value.

**Details**

Accepts strings as iterable and uses `hasProperty` for `Symbol.iterator`.

**Example** (Guarding iterables)

```ts
import { Predicate } from "effect"

const data: unknown = [1, 2, 3]

console.log(Predicate.isIterable(data))
```

**See**

- `isSet`
- `isMap`

**Signature**

```ts
declare const isIterable: (input: unknown) => input is Iterable<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1288)

Since v2.0.0