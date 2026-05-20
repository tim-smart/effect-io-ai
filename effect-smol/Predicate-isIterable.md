Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isIterable

Checks whether a value is iterable.

**When to use**

- You need a guard before iterating an unknown value.

**Details**

- Pure; does not mutate input.
- Accepts strings as iterable.
- Uses `hasProperty` for `Symbol.iterator`.

**Example** (Guard iterable)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1338)

Since v2.0.0