Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.WithGenerics

Defines a tagged enum shape that accepts generic type parameters.

Extend this interface and set `taggedEnum` to your union type, using
`this["A"]`, `this["B"]`, etc. as placeholders for the generics. The
`Count` parameter declares how many generics are used (up to 4).

- Use when variant payloads need to be parameterized (e.g., `Result<E, A>`).
- Pass the interface (not the type alias) to `taggedEnum` to get
  generic-aware constructors.

**Example** (generic tagged enum)

```ts
import { Data } from "effect"

type MyResult<E, A> = Data.TaggedEnum<{
  Failure: { readonly error: E }
  Success: { readonly value: A }
}>

interface MyResultDef extends Data.TaggedEnum.WithGenerics<2> {
  readonly taggedEnum: MyResult<this["A"], this["B"]>
}

const { Failure, Success } = Data.taggedEnum<MyResultDef>()

const ok = Success({ value: 42 })
// ok: { readonly _tag: "Success"; readonly value: number }
```

**See**

- `Kind` — apply concrete types to a `WithGenerics` definition
- `taggedEnum` — runtime constructors

**Signature**

```ts
export interface WithGenerics<Count extends number> {
    readonly taggedEnum: { readonly _tag: string }
    readonly numberOfGenerics: Count

    readonly A: unknown
    readonly B: unknown
    readonly C: unknown
    readonly D: unknown
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L272)

Since v2.0.0