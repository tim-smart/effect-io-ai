Package: `effect`<br />
Module: `Schema`<br />

## Schema.revealBottom

Widens a schema's type to the fully-parameterized `Bottom` interface,
making all 14 type parameters visible to TypeScript.

Normally, concrete schema interfaces (e.g. `Schema<string>`) hide most type
parameters. `revealBottom` is useful when writing generic utilities that need
to inspect or propagate the complete set of type parameters.

**Example** (Inspecting all type parameters of a schema)

```ts
import { Schema } from "effect"

const schema = Schema.String

// Widen to Bottom to access all 14 type parameters
const bottom = Schema.revealBottom(schema)

// `bottom` now exposes Type, Encoded, DecodingServices, EncodingServices,
// ast, Rebuild, ~type.make.in, Iso, ~type.parameters, etc.
type T = typeof bottom["Type"]     // string
type E = typeof bottom["Encoded"]  // string
```

**Signature**

```ts
declare const revealBottom: <S extends Top>(bottom: S) => Bottom<S["Type"], S["Encoded"], S["DecodingServices"], S["EncodingServices"], S["ast"], S["Rebuild"], S["~type.make.in"], S["Iso"], S["~type.parameters"], S["~type.make"], S["~type.mutability"], S["~type.optionality"], S["~type.constructor.default"], S["~encoded.mutability"], S["~encoded.optionality"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L433)

Since v4.0.0