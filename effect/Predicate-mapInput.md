Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.mapInput

Transforms a `Predicate<A>` into a `Predicate<B>` by applying a function `(b: B) => A`
to the input before passing it to the predicate. This is also known as "contramap" or
"pre-composition".

**Example**

```ts
import { Predicate, Number } from "effect"
import * as assert from "node:assert"

// A predicate on numbers
const isPositive: Predicate.Predicate<number> = Number.greaterThan(0)

// A function from `string` to `number`
const stringLength = (s: string): number => s.length

// Create a new predicate on strings by mapping the input
const hasPositiveLength = Predicate.mapInput(isPositive, stringLength)

assert.strictEqual(hasPositiveLength("hello"), true)
assert.strictEqual(hasPositiveLength(""), false)
```

**Signature**

```ts
declare const mapInput: { <B, A>(f: (b: B) => A): (self: Predicate<A>) => Predicate<B>; <A, B>(self: Predicate<A>, f: (b: B) => A): Predicate<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L187)

Since v2.0.0