Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum

Transforms a record of variant definitions into a discriminated union type.

Each key in the record becomes a variant with `readonly _tag` set to that
key. Use with `taggedEnum` to get runtime constructors, type guards,
and pattern matching.

- Use when you have two or more variants that share a common `_tag`
  discriminator.
- Variant records must **not** include a `_tag` property — it is added
  automatically.
- For generic tagged enums, see `TaggedEnum.WithGenerics`.

**Example** (defining a tagged enum)

```ts
import { Data } from "effect"

type HttpError = Data.TaggedEnum<{
  BadRequest: { readonly status: 400; readonly message: string }
  NotFound: { readonly status: 404 }
}>

// Equivalent to:
// | { readonly _tag: "BadRequest"; readonly status: 400; readonly message: string }
// | { readonly _tag: "NotFound"; readonly status: 404 }

const { BadRequest, NotFound } = Data.taggedEnum<HttpError>()

const err = BadRequest({ status: 400, message: "missing id" })
console.log(err._tag)
// "BadRequest"
```

**See**

- `taggedEnum` — runtime constructors for a `TaggedEnum`
- `TaggedEnum.WithGenerics` — generic tagged enums
- `TaggedEnum.Constructor` — the constructor object type

**Signature**

```ts
type TaggedEnum<A> = keyof A extends infer Tag ? Tag extends keyof A ? Types.Simplify<
      { readonly _tag: Tag } & { readonly [K in keyof A[Tag]]: A[Tag][K] }
    >
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L206)

Since v2.0.0