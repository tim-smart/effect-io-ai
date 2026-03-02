Package: `effect`<br />
Module: `Types`<br />

## Types.Tags

Extracts the `_tag` string literal types from a union.

- Use to get all discriminant values from a tagged union type.
- Members without a `_tag` field are ignored (produce `never`).

**Example** (Extracting tags)

```ts
import type { Types } from "effect"

type MyError =
  | { readonly _tag: "NotFound"; readonly id: string }
  | { readonly _tag: "Timeout"; readonly ms: number }
  | string

type Result = Types.Tags<MyError>
// "NotFound" | "Timeout"
```

**See**

- `ExtractTag`
- `ExcludeTag`

**Signature**

```ts
type Tags<E> = E extends { readonly _tag: string } ? E["_tag"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L153)

Since v2.0.0