Package: `effect`<br />
Module: `Optic`<br />

## Optic.Traversal

An optic that focuses on **zero or more** elements of type `A` inside `S`.

When to use:
- You want to read/update multiple elements at once (e.g. all items in
  an array, or a filtered subset).

Behavior:
- Technically `Optional<S, ReadonlyArray<A>>` — the focused value is an
  array of all matched elements.
- Use `.forEach()` to add per-element sub-optics (filtering, drilling
  deeper).
- Use `.modifyAll(f)` to map a function over every focused element.
- Use `getAll` to extract all focused elements as a plain array.

**Example** (traversing array elements with a filter)

```ts
import { Optic, Schema } from "effect"

type S = { readonly items: ReadonlyArray<number> }

const _positive = Optic.id<S>()
  .key("items")
  .forEach((n) => n.check(Schema.isGreaterThan(0)))

const getPositive = Optic.getAll(_positive)

console.log(getPositive({ items: [1, -2, 3] }))
// Output: [1, 3]
```

**See**

- `getAll` — extract focused elements
- `Optional` — the base type

**Signature**

```ts
export interface Traversal<in out S, in out A> extends Optional<S, ReadonlyArray<A>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1082)

Since v4.0.0