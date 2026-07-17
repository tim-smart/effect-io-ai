Package: `effect`<br />
Module: `Data`<br />

## Data.taggedEnum

Creates constructors and matchers for a `TaggedEnum` type.

**When to use**

Use when you model a closed union with plain data objects and want
construction, tag checks, and exhaustive matching from the same definition.

**Details**

Returns an object with:
- One constructor per variant (keyed by tag name)
- `$is(tag)` — returns a type-guard function that checks only the `_tag` field
- `$match` — exhaustive pattern matching (data-first or data-last)

**Gotchas**

- Constructors produce **plain objects**, not class instances.
- `$is(tag)` only checks the `_tag` field, not the full structure. It relies
  on the tag being globally unique and the value being produced by your
  constructors. For untrusted input, validate with the `Schema` module first.

**Example** (Creating and matching tagged enum values)

```ts
import { Data } from "effect"

type HttpError = Data.TaggedEnum<{
  BadRequest: { readonly message: string }
  NotFound: { readonly url: string }
}>

const { BadRequest, NotFound, $is, $match } = Data.taggedEnum<HttpError>()

const err = NotFound({ url: "/missing" })

// Type guard
console.log($is("NotFound")(err)) // true

// Pattern matching
const msg = $match(err, {
  BadRequest: (e) => e.message,
  NotFound: (e) => `${e.url} not found`
})
console.log(msg) // "/missing not found"
```

**Example** (Defining a generic tagged enum)

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

- `TaggedEnum` — the type-level companion
- `TaggedEnum.Constructor` — the returned object type
- `TaggedEnum.WithGenerics` — generic enum support

**Signature**

```ts
declare const taggedEnum: { <Z extends TaggedEnum.WithGenerics<1>>(): Types.Simplify<{ readonly [Tag in Z["taggedEnum"]["_tag"]]: <A>(args: TaggedEnum.Args<TaggedEnum.Kind<Z, A>, Tag, Extract<TaggedEnum.Kind<Z, A>, { readonly _tag: Tag; }>>) => TaggedEnum.Value<TaggedEnum.Kind<Z, A>, Tag>; } & TaggedEnum.GenericMatchers<Z>>; <Z extends TaggedEnum.WithGenerics<2>>(): Types.Simplify<{ readonly [Tag in Z["taggedEnum"]["_tag"]]: <A, B>(args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B>, Tag, Extract<TaggedEnum.Kind<Z, A, B>, { readonly _tag: Tag; }>>) => TaggedEnum.Value<TaggedEnum.Kind<Z, A, B>, Tag>; } & TaggedEnum.GenericMatchers<Z>>; <Z extends TaggedEnum.WithGenerics<3>>(): Types.Simplify<{ readonly [Tag in Z["taggedEnum"]["_tag"]]: <A, B, C>(args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B, C>, Tag, Extract<TaggedEnum.Kind<Z, A, B, C>, { readonly _tag: Tag; }>>) => TaggedEnum.Value<TaggedEnum.Kind<Z, A, B, C>, Tag>; } & TaggedEnum.GenericMatchers<Z>>; <Z extends TaggedEnum.WithGenerics<4>>(): Types.Simplify<{ readonly [Tag in Z["taggedEnum"]["_tag"]]: <A, B, C, D>(args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B, C, D>, Tag, Extract<TaggedEnum.Kind<Z, A, B, C, D>, { readonly _tag: Tag; }>>) => TaggedEnum.Value<TaggedEnum.Kind<Z, A, B, C, D>, Tag>; } & TaggedEnum.GenericMatchers<Z>>; <A extends { readonly _tag: string; }>(): TaggedEnum.Constructor<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L590)

Since v2.0.0