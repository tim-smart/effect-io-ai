Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.makeEquivalence

Generates an equivalence relation for `Redacted<A>` values based on an
equivalence relation for the underlying values `A`. This function is useful
for comparing `Redacted` instances without exposing their contents.

**Example**

```ts
import { Equivalence, Redacted } from "effect"
import * as assert from "node:assert"

const API_KEY1 = Redacted.make("1234567890")
const API_KEY2 = Redacted.make("1-34567890")
const API_KEY3 = Redacted.make("1234567890")

const equivalence = Redacted.makeEquivalence(Equivalence.strictEqual<string>())

assert.equal(equivalence(API_KEY1, API_KEY2), false)
assert.equal(equivalence(API_KEY1, API_KEY3), true)
```

**Signature**

```ts
declare const makeEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<Redacted<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L229)

Since v3.3.0