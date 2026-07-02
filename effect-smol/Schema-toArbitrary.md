Package: `effect`<br />
Module: `Schema`<br />

## Schema.toArbitrary

Derives a `fast-check` `Arbitrary` from a schema for property-based
testing. The derived arbitrary generates values that satisfy the schema.

**Details**

Constraints refine base generators; candidates add weighted sources while
filters still validate every value. `{ report: true }` returns warnings such
as `OpaqueFilter`, while derivation errors remain fail-fast. Recursive
schemas use terminal branches and fail when no finite terminal path exists.

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
declare const toArbitrary: { <S extends Constraint>(schema: S): FastCheck.Arbitrary<S["Type"]>; <S extends Constraint>(schema: S, options: { readonly report: true; }): Annotations.ToArbitrary.WithReport<FastCheck.Arbitrary<S["Type"]>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12975)

Since v4.0.0