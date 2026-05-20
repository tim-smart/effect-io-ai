Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedClass

Base class for immutable data types with a `_tag` discriminator.

**When to use**

Use `TaggedClass` when you need a single-variant tagged type or an ad-hoc discriminator. For multi-variant unions, prefer `TaggedEnum` with `taggedEnum`; for yieldable errors, use `TaggedError`.

**Details**

Like `Class`, but the resulting instances also carry a
`readonly _tag: Tag` property. The `_tag` is excluded from the constructor
argument.

**Example** (Defining a tagged class)

```ts
import { Data } from "effect"

class Person extends Data.TaggedClass("Person")<{
  readonly name: string
}> {}

const mike = new Person({ name: "Mike" })
console.log(mike._tag)
// "Person"
```

**See**

- `Class` — without a `_tag`
- `TaggedError` — tagged error variant
- `TaggedEnum` — multi-variant unions

**Signature**

```ts
declare const TaggedClass: <Tag extends string>(tag: Tag) => new <A extends Record<string, any> = {}>(args: Types.VoidIfEmpty<{ readonly [P in keyof A as P extends "_tag" ? never : P]: A[P]; }>) => Readonly<A> & { readonly _tag: Tag; } & Pipeable.Pipeable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L159)

Since v2.0.0