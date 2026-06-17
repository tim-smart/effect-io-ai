Package: `effect`<br />
Module: `Option`<br />

## Option.containsWith

Checks whether an `Option` contains a value equivalent to the given one, using a
custom `Equivalence`.

**When to use**

Use when you need to test whether an `Option` contains a value using a
custom equality check.

**Details**

- `Some` where `isEquivalent(value, a)` is `true` → `true`
- `Some` where not equivalent, or `None` → `false`

**Example** (Checking with custom equivalence)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2230)

Since v2.0.0