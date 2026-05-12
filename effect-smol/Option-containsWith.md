Package: `effect`<br />
Module: `Option`<br />

## Option.containsWith

Checks if an `Option` contains a value equivalent to the given one, using a
custom `Equivalence`.

**When to use**

- Testing membership with a custom equality check

**Behavior**

- `Some` where `isEquivalent(value, a)` is `true` → `true`
- `Some` where not equivalent, or `None` → `false`

**Example** (Custom equivalence check)

```ts
import { Equivalence, Option } from "effect"

const check = Option.containsWith(Equivalence.strictEqual<number>())

console.log(Option.some(2).pipe(check(2)))
// Output: true

console.log(Option.some(1).pipe(check(2)))
// Output: false

console.log(Option.none().pipe(check(2)))
// Output: false
```

**See**

- `contains` for a version using default equality

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Option<A>) => boolean; (self: Option<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2266)

Since v2.0.0