Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.transformOptional

Creates a `Transformation` where decode and encode operate on `Option`
values, giving full control over missing-key handling.

When to use this:
- You need to produce or consume `Option.None` to represent absent keys.
- You are working with optional struct fields.

Behavior:
- Each function receives `Option<input>` and returns `Option<output>`.
- `Option.None` input means the key is absent; returning `Option.None`
  omits the key from the output.
- Pure and synchronous.

**Example** (Converting an optional key to Option)

```ts
import { Option, Schema, SchemaTransformation } from "effect"

const schema = Schema.Struct({
  a: Schema.optionalKey(Schema.Number).pipe(
    Schema.decodeTo(
      Schema.Option(Schema.Number),
      SchemaTransformation.transformOptional({
        decode: Option.some,
        encode: Option.flatten
      })
    )
  )
})
```

See also:
- `transform` — when you don't need Option-level control
- `optionFromOptionalKey` — built-in for the common optional-key-to-Option pattern
- `optionFromOptional` — built-in for optional (undefined) to Option

**Signature**

```ts
declare const transformOptional: <T, E>(options: { readonly decode: (input: Option.Option<E>) => Option.Option<T>; readonly encode: (input: Option.Option<T>) => Option.Option<E>; }) => Transformation<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L440)

Since v4.0.0