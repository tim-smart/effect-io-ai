Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.Kind

Applies concrete type arguments to a `WithGenerics` definition, producing
the resulting tagged union type.

- Use to refer to a specific instantiation of a generic tagged enum in
  type signatures.

**Example** (applying generics)

```ts
import type { Data } from "effect"

type Option<A> = Data.TaggedEnum<{
  None: {}
  Some: { readonly value: A }
}>
interface OptionDef extends Data.TaggedEnum.WithGenerics<1> {
  readonly taggedEnum: Option<this["A"]>
}

// Resolve to the concrete union for `string`
type StringOption = Data.TaggedEnum.Kind<OptionDef, string>
// { _tag: "None" } | { _tag: "Some"; value: string }
```

**See**

- `WithGenerics` — define the generic shape

**Signature**

```ts
type Kind<Z, A, B, C, D> = (Z & {
    readonly A: A
    readonly B: B
    readonly C: C
    readonly D: D
  })["taggedEnum"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L311)

Since v2.0.0