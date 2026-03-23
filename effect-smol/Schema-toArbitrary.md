Package: `effect`<br />
Module: `Schema`<br />

## Schema.toArbitrary

Derives a `fast-check` `Arbitrary` from a schema for property-based
testing. The derived arbitrary generates values that satisfy the schema.

**Example** (Generating arbitrary values)

```ts
import { Schema } from "effect"
import * as FastCheck from "fast-check"

const PersonArb = Schema.toArbitrary(
  Schema.Struct({ name: Schema.String, age: Schema.Number })
)

// Sample a random value
const sample = FastCheck.sample(PersonArb, 1)[0]
console.log(typeof sample.name) // "string"
```

**Signature**

```ts
declare const toArbitrary: <S extends Top>(schema: S) => FastCheck.Arbitrary<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10284)

Since v4.0.0