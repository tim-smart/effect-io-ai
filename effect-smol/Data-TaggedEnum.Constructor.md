Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.Constructor

The full constructors-and-matchers object type returned by `taggedEnum`.

**When to use**

Use when you want to annotate an exported constructor bundle so downstream
code keeps exact variant constructors and exhaustive matching.

**Details**

Includes:
- A constructor function for each variant (keyed by tag name)
- `$is(tag)` — returns a type-guard that checks only the `_tag` field;
  safe when the tag is globally unique and the value was produced by your
  constructors. For untrusted input, validate with the `Schema` module first.
- `$match` — exhaustive pattern matching (data-last or data-first)

**Example** (Using the constructor object)

```ts
import { Data } from "effect"

type Shape =
  | { readonly _tag: "Circle"; readonly radius: number }
  | { readonly _tag: "Rect"; readonly w: number; readonly h: number }

const { Circle, Rect, $is, $match } = Data.taggedEnum<Shape>()

const shape = Circle({ radius: 10 })

// Type guard
if ($is("Circle")(shape)) {
  console.log(shape.radius)
}

// Pattern matching
const label = $match(shape, {
  Circle: (s) => `circle r=${s.radius}`,
  Rect: (s) => `rect ${s.w}x${s.h}`
})
```

**See**

- `taggedEnum` — creates constructors and matchers

**Signature**

```ts
type Constructor<A> = Types.Simplify<
    {
      readonly [Tag in A["_tag"]]: ConstructorFrom<
        Extract<A, { readonly _tag: Tag }>,
        "_tag"
      >
    } & {
      readonly $is: <Tag extends A["_tag"]>(
        tag: Tag
      ) => (u: unknown) => u is Extract<A, { readonly _tag: Tag }>
      readonly $match: {
        <
          Cases extends {
            readonly [Tag in A["_tag"]]: (
              args: Extract<A, { readonly _tag: Tag }>
            ) => any
          }
        >(
          cases: Cases
        ): (value: A) => Unify<ReturnType<Cases[A["_tag"]]>>
        <
          Cases extends {
            readonly [Tag in A["_tag"]]: (
              args: Extract<A, { readonly _tag: Tag }>
            ) => any
          }
        >(
          value: A,
          cases: Cases
        ): Unify<ReturnType<Cases[A["_tag"]]>>
      }
    }
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L398)

Since v3.1.0