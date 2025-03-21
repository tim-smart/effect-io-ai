Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.mapInput

Given a `Predicate<A>` returns a `Predicate<B>`

**Example**

```ts
import * as assert from "node:assert"
import { Predicate, Number } from "effect"

const minLength3 = Predicate.mapInput(Number.greaterThan(2), (s: string) => s.length)

assert.deepStrictEqual(minLength3("a"), false)
assert.deepStrictEqual(minLength3("aa"), false)
assert.deepStrictEqual(minLength3("aaa"), true)
assert.deepStrictEqual(minLength3("aaaa"), true)
```

**Signature**

```ts
declare const mapInput: { <B, A>(f: (b: B) => A): (self: Predicate<A>) => Predicate<B>; <A, B>(self: Predicate<A>, f: (b: B) => A): Predicate<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L90)

Since v2.0.0